<script setup lang="ts">
import { createGreeting } from './createGreeting.ts'

defineProps<{ name?: string }>()
</script>

<template>
    <h1>{{ createGreeting(name) }}</h1>
</template>
