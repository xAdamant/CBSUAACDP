<template>
  <v-app id="inspire">
    <v-main>
      <v-container>
        <v-row align="center" justify="center" class="py-6">
          <v-col v-for="(course,i) in courses" :key="course.id">
            <v-row>
              <v-col cols="12" class="py-0">
                <v-card @click="clickOverlay(i)" width="400"  height="550" :class="`rounded-pill ${course.bg_color}`" elevation="24">
                  <v-row class="d-flex flex-no-wrap justify-center">
                    <v-col cols="12">
                        <v-avatar size="100%" class="pa-10">
                          <v-img :src="course.logo"></v-img>
                        </v-avatar>
                    </v-col>
                    <v-col cols="12">
                      <v-card-text class="px-14 mx-2">
                        <p class="body-1 text-center"><strong>{{course.course}}</strong></p>
                      </v-card-text>
                    </v-col>
                  </v-row>
                  <v-overlay :absolute="course.abstl" :value="course.ovly" class="pa-4" :color="course.bg_color">
                    <v-row>
                      <v-col>
                        <v-btn color="success" @click="clickOverlay(i)" block :href="`/course/${course.id}/phase/1/review/1`" x-large class="px-4">
                          Compliance Report
                        </v-btn>
                      </v-col>
                      <v-col>
                        <v-btn color="yellow darken-4" @click="clickOverlay(i)" block :href="`/course/${course.id}/phase/2/review/0`" x-large class="px-4">
                          Narrative Profile
                        </v-btn>
                      </v-col>
                    </v-row>
                  </v-overlay>
                </v-card>
              </v-col>
            </v-row>
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  export default {
    data: () => ({
      e1: 1,
      courses: [],
      phase: '',
    }),

    methods:{
      async initialize(){
        const res = await this.callApi('get','/get_all_courses')
        const res1 = await this.callApi('get','/get_last_phase')

        if(res.data){
          for (let index = 0; index < res.data.length; index++) {
            res.data[index].stpr = 1
            res.data[index].ovly = false
            res.data[index].abstl = true
          }
          this.courses = res.data
        }

        if(res1.data){
          if(res1.data.phase > 1) {
            this.phase = res1.data.phase - 1
          }
        }
      },
      clickOverlay(i) {
        for (let index = 0; index < this.courses.length; index++) {
          if(index == i){
            this.courses[index].ovly = !this.courses[index].ovly
          }else{
            this.courses[index].ovly = false
          }
        }
      }
    },
    created() {
      this.initialize()
    }
  }
</script>