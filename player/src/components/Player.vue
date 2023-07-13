<script setup lang="js">
import "@mycujoo/videojs-hls-quality-selector";
import videojs from 'video.js';
import "videojs-contrib-quality-levels";
import { onMounted } from 'vue';


onMounted(() => {
    let player = videojs('player', {
        "liveui": false
    });

    player.hlsQualitySelector({
        displayCurrentQuality: true,
    });

    player.src({
        src: "http://localhost:8000/hls/ash.m3u8",
        type: 'application/x-mpegURL',
    })

    // player.src([
    //     {
    //         src: 'http://localhost:8000/hls/ash_low.m3u8',
    //         type: 'application/x-mpegURL',
    //         label: 'Low',
    //     },
    //     {
    //         src: 'http://localhost:8000/hls/ash_mid.m3u8',
    //         type: 'application/x-mpegURL',
    //         label: 'Medium',
    //     },
    //     {
    //         src: 'http://localhost:8000/hls/ash_hi.m3u8',
    //         type: 'application/x-mpegURL',
    //         label: 'High',
    //     },
    // ]);
});
</script>

<template>
    <video id="player" class="video-js vjs-city-skin" controls preload="auto" width="640" height="268">
        <!-- <source
            src="https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8"
            type="application/x-mpegURL"> -->
    </video>
</template>
