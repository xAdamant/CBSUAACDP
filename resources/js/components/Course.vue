<template>
  <v-app id="inspire">
    <v-main>
      <v-container>
        <v-row>
          <v-col>
            <v-card :color="bgColor" class="pa-2"> 
              <v-card-title class="text-center justify-center pt-6 pb-1">
                <div class="font-weight-bold headline basil--text">
                  <strong>{{title}}</strong> 
                </div>
              </v-card-title>
              <div class="text-center body-2">{{parseInt(review) ? '(Compliance Report)': '(Narrative Profile)'}}</div>
              <div class="text-right body-1 pb-1">
                <v-btn dark class="green darken-3" href="/">Back to home</v-btn>
              </div>
              <v-tabs v-model="model" centered :background-color="bgColor" slider-color="yellow">
                <v-tab v-for="(area) in areas" :key="area.id" :href="`#tab-${area.id}`">
                  <strong>{{area.area}}</strong>
                </v-tab>
              </v-tabs>
              <v-row>
                <v-col cols="12">
                  <v-tabs-items v-model="model">
                    <v-tab-item v-for="(area) in areas" :key="area.id" :value="`tab-${area.id}`">
                      <v-card flat class="grey lighten-1">
                        <v-card-text class="pa-0">
                          <div class="frame-container" style="height:75vh">
                            <v-btn class="iframe-button align-center" target="_blank" color="primary" :href="`/support_docs/${area.id}`">
                              <span class="py-2">Support Docs</span>
                            </v-btn>
                            <iframe :src="area.file_name" frameborder="0" width="100%" height="100%"/>
                          </div>
                        </v-card-text>
                      </v-card>
                    </v-tab-item>
                  </v-tabs-items>
                </v-col>
              </v-row>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  export default {
    props: ['course_id', 'phase', 'review'],
    data: () => ({
      model: '',
      areas: [],
      title: '',
      bgColor:'',
    }),

    methods: {
        async initialize(){
        const res = await this.callApi('post','/get_selected_course_info',{course_id: this.course_id, phase: this.phase})
        if(res.data){   
            this.areas = res.data[0].areas
            this.title = res.data[0].course.course
            this.bgColor = res.data[0].course.bg_color
            this.model = 'tab-' + this.areas[0].id
        }
      },
    },

    created() {
      this.initialize()
    },
  }
</script>
<style scoped>
  .frame-container {
  position: relative;
  }
  .iframe-button {
    display: none;
    position: absolute;
    top: 15px;
    left: 15px;
  }
  .frame-container:hover .iframe-button {
  display: initial;
}
</style>