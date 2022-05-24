<template>
  <section class="container mx-auto">
    <div class="landing-page">
      <div class="landing-page--image">
        <img
          alt="Logo sidebar"
          src="~/assets/logo-sidebar.png"
        >
      </div>
      <div class="landing-page--content">
        <div class="text-2xl font-bold pb-8">
          Harap Tunggu
        </div>
        <div class="text-base font-semibold pb-6">
          Anda sedang diallihkan ke URL baru {{ link }}
        </div>
        <div class="text-sm text-gray-600 pb-8">
          Jangan memuat ulang halaman ini atau klik tombol kembali pada browser.
        </div>
        <div class="text-base">
          Waktu maksimal dalam detik
        </div>
        <div class="text-xl font-bold pb-8">
          {{ countDown }}
        </div>
        <div class="text-gray-600 pb-8">
          Diharapkan ketika Anda ingin mengakses website SIDEBAR, Anda dapat langsung 
          <br>menggunakan link ini 
          <a 
            class="underline decoration-3" 
            :href="link" 
            target="_blank" 
            rel="noopener noreferrer"
          >
            {{ link }}
          </a>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  data () {
    return {
      countDown : 5,
      link: 'https://sidebar.jabarprov.go.id/FilesUploaded/ttd/sudah_ttd/SURAT_BIASA_-_KADIS_11042022_075817_signed.pdf'
    }
  },
  created () {
    this.countDownTimer()
  },
  methods: {
    countDownTimer() {
      if (this.countDown > 0) {
        return setTimeout(() => {
          this.countDown -= 1
          this.countDownTimer()
        }, 1000)
      } else {
        return location.replace(this.link, '_blank')
      }
    }
  }
};
</script>

<style lang="scss" scoped>
  .landing-page {
    @apply grid gap-1 font-roboto text-center justify-center pb-6 p-20;
    &--image {
      @apply flex flex-wrap justify-center pb-6;
    }
    &--content {
      @apply w-full inline-block text-center;
    }
    &--link {
      @apply ;
    }
  }
</style>
