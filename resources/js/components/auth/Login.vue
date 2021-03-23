<template>
  <v-app id="inspire">
    <v-main class="grey lighten-3 align-center">
      <v-container>
        <v-row>
          <v-col>
            <v-card class="mx-auto" max-width="1000" :loading="isLoading">
              <v-row>
                <v-col cols="5" class="green darken-3 text-white" style="width:600">
                  <div class="pa-10 text-center">
                    <v-img class="mb-4" contain size="100%" src="/img/logo/CBSUA_Logo.png"></v-img>
                    <strong class="headline font-weight-light ">
                      ACCREDITATION PORTAL
                    </strong>
                  </div>
                </v-col>
                <v-col cols="7" style="width:600">
                  <v-card-title class="title font-weight-regular justify-space-between">
                    <strong>{{ currentTitle }}</strong>
                  </v-card-title>
                  <v-window v-model="step">
                    <v-window-item :value="1" >
                      <div class="pa-2 text-left" style="height:300px;overflow-y: scroll">
                        <p>I hereby acknowledge that as an authorized accreditor accessing this website with my designated log-in credentials, CBSUA grants a revocable, non-transferrable, limited-time, read-only access to CBSUA’s accreditation related information for validation and processing.</p>
                        <p>As an accreditor accessing this website and subsequent online documents and links, I hereby agree to the following terms and conditions pursuant RA 10173 otherwise known as the “Data Privacy Act of 2012” and warrant the following:</p>
                        <ul class="text-left">
                          <li>That I shall maintain the confidentiality and secrecy of all data that come to my knowledge and possession, and will disclose said data only pursuant to a lawful purpose, and to authorized recipients of such data;</li>
                          <li>That I shall uphold the rights of data subjects (students, employees, and stakeholders in sampled information) and adhere to the general data privacy principles and the requirements of lawful processing;</li>
                          <li>That I, together with the accrediting organization, shall allow the processing of such personal information subject to compliance with the requirements of the Data Privacy Act and other laws allowing disclosure of information to the public and adherence to the principles of transparency, legitimate purpose, and proportionality.</li>
                          <li>That I, together with the accrediting organization, shall assume equal responsibility with CBSUA for any data that I will process during the accreditation in compliance with all applicable laws, enactments, regulations, orders, standards and other similar instruments;</li>
                          <li>That I, together with the accrediting organization, will take appropriate technical and organizational measures against the unauthorized or unlawful Processing of Data and against the accidental loss or destruction of, or damage to Data to ensure CBSUA’s compliance with the Data Privacy Act.</li>
                          <li>That I, together with the accrediting organization, shall notify CBSUA immediately if I become aware of any unauthorized or unlawful processing, loss of, damage to or destruction of the Data or any instance which would mean that the CBSUA should revise the security and technical measures in place in order to protect the Data of the subjects in the accreditation related documents.</li>
                          <v-checkbox  v-model="cbxAgree" label="I agree to the terms and conditions" color="success" hide-details @click="cbxAgree ? step++ : step" :rules="[v => !!v || 'You must agree to continue!']" required></v-checkbox>
                        </ul>
                      </div>
                    </v-window-item>
                    <v-window-item :value="2">
                      <v-card-text>
                        <v-form ref="form" lazy-validation>
                          <v-text-field v-model="data.email" label="Email" color="green darken-3" :rules="emailRules" placeholder="example@cbsua.edu.ph"></v-text-field>
                          <v-text-field v-model="data.password" :rules="[v => !!v || 'Password is required']" color="green darken-3" label="Password" :type="showPassword ? 'text' : 'password'"></v-text-field>
                          <v-checkbox v-model="showPassword" label="Show password" color="success" hide-details class="m1"></v-checkbox>
                        </v-form>
                        <div class="text-center py-6 px-12">
                          <v-btn v-if="step === 2" dark color="green darken-3" block x-large @click="signIn">
                            Sign In
                          </v-btn>
                          <i class="body-1">or</i>
                          <v-btn v-if="step === 2" block x-large class="body-1 btn btn-google" href="auth/google">
                            <v-icon left>
                              mdi-google
                            </v-icon>
                            <span>
                              <span class="text-default"> {{googleText + " "}}</span>
                              <strong class="text-primary">{{'  G '}}</strong>
                              <strong class="text-danger">{{'o '}}</strong>
                              <strong class="text-warning">{{'o '}}</strong>
                              <strong class="text-primary">{{'g '}}</strong>
                              <strong class="text-success">{{'l '}}</strong>
                              <strong class="text-danger">{{'e '}}</strong>
                            </span>
                          </v-btn>
                        </div>
                      </v-card-text>                               
                    </v-window-item>
                  </v-window>
                </v-col>
              </v-row>
            </v-card>
          </v-col>
        </v-row>
      </v-container>     
    </v-main>
    <v-snackbar
      v-model="isError"
      :timeout="5000"
      color="red darken-3"
    >
      <span class="text-center"> {{ errMessage }} </span>
    </v-snackbar>
  </v-app>
</template>

<script>
  export default {
    props: ['errEmail','errPassword'],
    data: () => ({
      showPassword: false,
      isLoading: false,
      step: 1,
      cbxAgree: false,
      data: {
          email:'',
          password:''
      },
      errMessage: '',
      googleText:'Sign  in  with  ',
      isError: false,
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
    }),
    methods: {
        async signIn(){
            if(!this.$refs.form.validate()) return
            this.isLoading = true
            const res =  await this.callApi( 'post','/login', this.data )
            if(res.data.errors){
                this.isError = true
                this.errMessage = "Your credentials do not match our record"
            }else{
                window.location = "/home"
            }
            this.isLoading = false
        }
    },
    computed: {
      currentTitle () {
        switch (this.step) {
          case 1: return 'Terms and Conditions'
          case 2: return 'Sign In'
          default: return 'Account created'
        }
      },
    },
  }
</script>