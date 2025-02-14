<!-- README.md -->

<style>
  body {
    font-family: 'MS Gothic', monospace;
    background-color: rgb(75, 95, 137);
  }
  h1 {
    color:rgb(124, 222, 124);
  }
  .question {
    font-weight: bold;
  }
  .answer {
    background-color: rgb(35, 64, 31);
    padding: 5px;
    display: inline-block;
    padding-left: 25px;
    border-left: 5px solid rgb(122, 183, 122); /* Left border only */
  }

  .highlight {
    background-color: rgb(151, 99, 124);
    color: white;
    padding: 2px 5px;
    border-radius: 4px;
}

</style>
<body style="font-family: 'MS Gothic', monospace;
    background-color: rgb(75, 95, 137);">

# Game Development Tutorial 2024/2025

## Table of Contents

- [Tutorial 2 - Introduction to Game Engine](#tutorial-2)
  - [1. Apa saja pesan log yang dicetak pada panel Output?](#question-1)
  - [2. Gerakkan landasan ke batas area bawah dan kembali ke atas.](#question-2)
  - [3. Buka scene MainLevel dengan tampilan workspace 2D.](#question-3)
  - [4. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.](#question-4)
  - [5. Perbedaan RigidBody2D dan StaticBody2D.](#question-5)
  - [6. Ubah nilai atribut Mass pada RigidBody2D di BlueShip.](#question-6)
  - [7. Ubah nilai atribut Disabled pada CollisionShape2D di StonePlatform.](#question-7)
  - [8. Manipulasi Position, Rotation, dan Scale BlueShip.](#question-8)
  - [9. Mengapa nilai Position node tidak sesuai di Inspector?](#question-9)

- [Tutorial 3 - Coming Soon](#tutorial-3)

---

<h1 id="tutorial-2" style="color:rgb(124, 222, 124);">✮ Tutorial 2 - Introduction to Game Engine</h1>

**Nama**  : Samuel Taniel Mulyadi  
**NPM**   : 2206081805  

---

<span id="question-1" style="font-weight: bold;">
1. Apa saja pesan log yang dicetak pada panel Output?
</span>  

<div style="background-color: rgb(35, 64, 31); padding: 5px; display: inline-block; padding-left: 25px; border-left: 5px solid rgb(122, 183, 122); color: white;">
"<br>
<span style="background-color: rgb(151, 99, 124); color: white; padding: 2px 5px; border-radius: 4px;">
Platform initialized<br>
Reached objective!<br>
</span>"<br>
Merupakan pesan log yang dicetak, jika kita menyentuh batas atas area permainan berkali-kali maka akan memberikan output "Reached objective!" sesuai berapa banyak kita menyentuhnya.
</div>
<p></p>

<span class="question" id="question-2">2. Gerakkan landasan ke batas area bawah dan kembali ke atas.</span>
<div class="answer">
"<br><span class="highlight">
Platform initialized<br>
Reached objective!<br>
Reached objective!<br>
</span>"<br>
Merupakan pesan log yang dicetak, jika kita menyentuh batas atas area permainan berkali-kali dari batas bawah maka akan memberikan output "Reached objective!" sesuai berapa banyak kita melakukannya.
</div>
<p></p>

<span class="question" id="question-3">3. Buka scene <b>MainLevel</b> dengan tampilan workspace 2D.</span>
<div class="answer">
Ya, dari posisinya kita ketahui bahwa lokasi scene ObjectiveArea berada pada batas atas area,
dimana objektif yang kita lakukan sebelumnya pada nomor 1 dan 2 yang mungkin menjadi pengirim
log tiap kita menyentuhnya. <br>
"<br><span class="highlight">
Reached objective!<br>
</span>"<br>
</div>
<p></p>

<span class="question" id="question-4">4. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.</span>
<div class="answer">
    Sprite digunakan untuk menampilkan gambar (texture) di dalam game. Sprite hanya berfungsi 
    sebagai representasi visual dan tidak memiliki properti fisika atau interaksi dengan dunia 
    game kecuali dikombinasikan dengan node lain seperti <span class="highlight">CollisionShape2D</span>.
</div>
<p></p>

<span class="question" id="question-5">5. Perbedaan RigidBody2D dan StaticBody2D.</span>
<div class="answer">
<span class="highlight">RigidBody2D:</span> Memiliki simulasi fisika yang aktif. Node ini dipengaruhi oleh gravitasi, gaya, dan dapat bertabrakan dengan objek lain secara dinamis. <br>
<span class="highlight">StaticBody2D</span>: Digunakan untuk objek yang tidak bergerak tetapi bisa berinteraksi dengan objek lain. Biasanya digunakan untuk lantai, dinding, atau platform yang diam.
</div>
<p></p>

<span class="question" id="question-6">6. Ubah nilai atribut Mass pada RigidBody2D di BlueShip.</span>
<div class="answer">
Jika mass (massa) <span class="highlight">ditingkatkan</span>, BlueShip akan menjadi lebih sulit untuk dipercepat dan lebih lambat saat bergerak akibat gaya yang diberikan.
<br>Jika mass <span class="highlight">dikurangi</span>, BlueShip akan lebih mudah terdorong oleh gaya atau tabrakan.
<br>Namun dalam hal ini, dampaknya tidak terlalu terlihat sehingga harus observasi dengan begitu teliti.
</div>
<p></p>

<span class="question" id="question-7">7. Ubah nilai atribut Disabled pada CollisionShape2D di StonePlatform.</span>
<div class="answer">
Jika atribut Disabled diaktifkan (true), maka StonePlatform tidak akan memiliki bentuk tabrakan di dalam simulasi fisika.
<br>Akibatnya, objek seperti BlueShip bisa menembus platform seolah-olah tidak ada.
</div>
<p></p>

<span class="question" id="question-8">8. Manipulasi Position, Rotation, dan Scale BlueShip.</span>
<div class="answer">
<span class="highlight">Position</span>: Mengubah koordinat BlueShip di dalam dunia game.<br>
<br><span class="highlight">Rotation</span>: Memutar BlueShip sesuai sudut yang diatur.<br>
<br><span class="highlight">Scale</span>: Tidak ada perubahan karena pada scene MainLevel kita hanya bisa edit RigidBody2D BlueShip saja, sementara untuk Scale/Size kita harus mengubah langsung dari Spritenya di scene BlueShip, hal ini ditunjukkan melalui pesan error di sebelah instance BlueShip.
<br><br>
"Size changes to RigidBody2D will be overridden by the physics engine when running.<br>
Change the size in children collision shapes"
<br><br>
<span class="highlight">Efeknya</span>: BlueShip akan terlihat berpindah tempat, berputar, atau berubah ukuran di viewport sesuai perubahan yang dilakukan.
</div>
<p></p>

<span class="question" id="question-9">9. Mengapa nilai Position node tidak sesuai di Inspector?</span>
<div class="answer">
Hal ini karena StonePlatform dan StonePlatform2 berada dalam <span class="highlight">Node Parent PlatformBlue</span> yang memiliki transformasi (Position, Rotation, atau Scale) sendiri yang sesuai dengan posisinya dalam scene.
<br>
<br>
Dalam Godot, node child mewarisi transformasi dari node parent. Jika parent memiliki offset posisi, rotasi, atau skala tertentu, child node akan menyesuaikan posisinya relatif terhadap parent, bukan berdasarkan koordinat global yang terlihat di Inspector.
</div>
<p></p>

<span class="question" id="question-10">10. <span class="highlight">Latihan Mandiri</span>: Membuat Level Baru</span>
<div class="answer">
Pada latihan mandiri, terdapat beberapa hal yang saya tambahkan, seperti berikut: 
<ul>
    <li>Sprite objek pesawat baru berupa UFO.</li>
    <li>Objek landasan baru yang berupa Moon Platform.</li>
    <li>Perubahan penempatan objective.</li>
    <li>Rintangan meteor.</li>
    <li>Reset kondisi level ketika pesawat terkena meteor dan jatuh ke luar area bawah permainan.</li>
    <li>Collision box di luar area atas dan samping permainan.</li>
    <li>Gambar latar supaya semakin imersif.</li>
    <li>UI untuk memperjelas objektif, ketika menang, dan button play again.</li>
    <li>UFO dilengkapi dengan partikel ketika bergerak untuk sedikit polishing.</li>
</ul>
<span class="highlight">Sekian terima kasih (┬┬﹏┬┬)</span>
</div>
<p></p>


---

<h1 id="tutorial-3">✮ Tutorial 3 - Coming Soon</h1>


</body>