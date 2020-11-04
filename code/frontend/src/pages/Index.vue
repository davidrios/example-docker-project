<template>
  <q-page class="row items-center justify-evenly">
    <example-component
      title="Example component"
      active
      :todos="todos"
      :meta="meta"
    ></example-component>
    <q-btn @click="click" label="clickme!" />
    <q-btn @click="bug" label="clickeme too!" />
  </q-page>
</template>

<script lang="ts">
import { Todo, Meta } from 'components/models'
import ExampleComponent from 'components/CompositionComponent.vue'
import { defineComponent, ref } from '@vue/composition-api'
import { Test } from '../stuff'

export default defineComponent({
  name: 'PageIndex',
  components: { ExampleComponent },
  setup () {
    const todos = ref<Todo[]>([
      {
        id: 1,
        content: 'ct1'
      }
    ])
    const meta = ref<Meta>({
      totalCount: 1200
    })
    return { todos, meta }
  },
  methods: {
    click () {
      console.log('hello!')
    },
    bug () {
      let a = new Test()
    }
  }
})
</script>
