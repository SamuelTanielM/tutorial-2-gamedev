<a name="readme-top"></a>

<br />
<div align="center">
  <a href="https://samueltaniel.itch.io">
    <img src="assets/Ufo.png" alt="To Pokemon Shop" width="80" height="80">
  </a>

<h3 align="center">Tutorial Game Development 2024/2025</h3>

  <p align="center">
    Samuel Taniel Mulyadi - 2206081805
    <br />
    <a href="https://github.com/SamuelTanielM/tutorial-2-gamedev><strong>Explore the code »</strong></a>
    <br />
    <br />
    <a href="https://samueltaniel.itch.io">View Site</a>
    ·
    <a href="https://csui-game-development.github.io">View Assignment</a>
  </p>
</div>

<br>

🏪 (┬┬﹏┬┬)q(≧▽≦q)✪ ω ✪(≧∀≦)ゞ( •̀ ω •́ )✧◉_◉ヾ(≧▽≦*)o(´。＿。｀)(◔◡◔)ヾ(⌐■_■)ノ♪(o゜▽゜)o✨

# 🚀 Game Development Tutorial 2024/2025

<details>
<summary>📌 Table of Contents</summary>
  
- [🚀 Game Development Tutorial 2024/2025](#-game-development-tutorial-20242025)
  - [📌 Table of Contents](#-table-of-contents)
  - [✨ Tutorial 2 - Introduction to Game Engine ](#tutorial-2)
  - [✨ Tutorial 3 - Coming Soon ](#tutorial-3)
    
</details>

---
<details>
<summary>✨ Tutorial 2</summary>

## ✨ Tutorial 2 - Introduction to Game Engine <a id="tutorial-2"></a>

<details>
<summary>📌 Table of Contents</summary>
  
  - [1. Apa saja pesan log yang dicetak pada panel Output?](#question-1)
  - [2. Gerakkan landasan ke batas area bawah dan kembali ke atas.](#question-2)
  - [3. Buka scene MainLevel dengan tampilan workspace 2D.](#question-3)
  - [4. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.](#question-4)
  - [5. Perbedaan RigidBody2D dan StaticBody2D.](#question-5)
  - [6. Ubah nilai atribut Mass pada RigidBody2D di BlueShip.](#question-6)
  - [7. Ubah nilai atribut Disabled pada CollisionShape2D di StonePlatform.](#question-7)
  - [8. Manipulasi Position, Rotation, dan Scale BlueShip.](#question-8)
  - [9. Mengapa nilai Position node tidak sesuai di Inspector?](#question-9)
  - [10. Latihan Mandiri: Membuat Level Baru](#question-9)
    
</details>

---

### **1. Apa saja pesan log yang dicetak pada panel Output?** <a id="question-1"></a>
`Platform initialized`
<br>`Reached objective!`<br> 
Pesan log akan muncul saat menyentuh batas atas area permainan. Jika dilakukan berkali-kali, output `"Reached objective!"` akan terus bertambah.

<br>

### **2. Gerakkan landasan ke batas area bawah dan kembali ke atas.** <a id="question-2"></a>

`Platform initialized`
<br>`Reached objective!`
<br>`Reached objective!`

Jika menyentuh batas atas setelah bergerak dari batas bawah, `"Reached objective!"` akan muncul setiap kali menyentuhnya.

<br>

### **3. Buka scene `MainLevel` dengan tampilan workspace 2D.** <a id="question-3"></a>

Ya, scene `ObjectiveArea` berada di batas atas area. Oleh karena itu, saat kita menyentuhnya, pesan log yang muncul adalah:
<br>`Reached objective!`

<br>

### **4. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.** <a id="question-4"></a>

`Sprite` digunakan untuk menampilkan gambar (texture) dalam game. Sprite sendiri tidak memiliki properti fisika, tetapi dapat berinteraksi dengan dunia game jika dikombinasikan dengan `CollisionShape2D`.

<br>

### **5. Perbedaan `RigidBody2D` dan `StaticBody2D`.** <a id="question-5"></a>

- **`RigidBody2D`**: Memiliki simulasi fisika aktif (dipengaruhi gravitasi, gaya, dan tabrakan).  
- **`StaticBody2D`**: Tidak bergerak, tetapi bisa berinteraksi dengan objek lain. Biasanya digunakan untuk lantai dan dinding.

<br>

### **6. Ubah nilai atribut `Mass` pada `RigidBody2D` di BlueShip.** <a id="question-6"></a>

- **Jika `mass` meningkat** → BlueShip lebih sulit dipercepat dan lebih lambat bergerak.  
- **Jika `mass` berkurang** → BlueShip lebih mudah terdorong oleh gaya atau tabrakan.

Efeknya tidak selalu terlihat jelas dan perlu diamati dengan teliti.

<br>

### **7. Ubah nilai atribut `Disabled` pada `CollisionShape2D` di StonePlatform.** <a id="question-7"></a>

Jika atribut `Disabled = true`, maka **StonePlatform tidak akan memiliki bentuk tabrakan**, sehingga BlueShip bisa menembusnya seperti tidak ada objek di sana.

<br>

### **8. Manipulasi `Position`, `Rotation`, dan `Scale` BlueShip.** <a id="question-8"></a>
- **`Position`** → Mengubah koordinat BlueShip dalam dunia game.  
- **`Rotation`** → Memutar BlueShip.  
- **`Scale`** → Tidak dapat diubah langsung di `RigidBody2D`, harus melalui `Sprite` dalam scene `BlueShip`.

📌 Jika mencoba mengubah ukuran `RigidBody2D`, akan muncul error:
<br>`Size changes to RigidBody2D will be overridden by the physics engine when running. Change the size in children collision shapes.`

<br>

### **9. Mengapa nilai `Position` node tidak sesuai di Inspector?** <a id="question-9"></a>

Karena **StonePlatform** dan **StonePlatform2** berada dalam **Node Parent `PlatformBlue`**, maka transformasi (Position, Rotation, Scale) yang terlihat di Inspector **berdasarkan parent**.

📌 **Godot mewarisi transformasi parent ke child nodes**, jadi jika parent memiliki offset, semua child akan mengikuti relatif terhadapnya.

<br>

### **10. Latihan Mandiri: Membuat Level Baru** <a id="question-10"></a>

Pada latihan mandiri, saya menambahkan beberapa fitur baru:  

- 🚀 Sprite objek pesawat baru berupa **UFO**.  
- 🌑 Objek landasan baru berupa **Moon Platform**.  
- 🎯 Perubahan penempatan **objective**.  
- ☄️ **Rintangan meteor**.  
- 🔄 **Reset level** saat pesawat terkena meteor atau jatuh keluar area.  
- 🛑 **Collision box** di luar area atas dan samping permainan.  
- 🖼️ **Background baru** agar lebih imersif.  
- 🏆 **UI tambahan** untuk memperjelas objektif, menang, dan tombol **Play Again**.  
- ✨ UFO dilengkapi **partikel efek** saat bergerak untuk lebih banyak polesan.

🚀 **Sekian terima kasih (┬┬﹏┬┬)**

[Back to Top](#readme-top)

</details>

---
<details>
<summary>✨ Tutorial 3</summary>

## ✨ Tutorial 3 - Coming Soon <a id="tutorial-3"></a>

<details>
<summary>📌 Table of Contents</summary>
  
  - [1. Apa saja pesan log yang dicetak pada panel Output?](#question-11)
    
</details>

### **10. Latihan Mandiri: Membuat Level Baru** <a id="question-11"></a>

Pada latihan mandiri, saya menambahkan beberapa fitur baru:  

- 🚀 Sprite objek pesawat baru berupa **UFO**.  
- 🌑 Objek landasan baru berupa **Moon Platform**.  
- 🎯 Perubahan penempatan **objective**.  
- ☄️ **Rintangan meteor**.  
- 🔄 **Reset level** saat pesawat terkena meteor atau jatuh keluar area.  
- 🛑 **Collision box** di luar area atas dan samping permainan.  
- 🖼️ **Background baru** agar lebih imersif.  
- 🏆 **UI tambahan** untuk memperjelas objektif, menang, dan tombol **Play Again**.  
- ✨ UFO dilengkapi **partikel efek** saat bergerak untuk lebih banyak polesan.

🚀 **Sekian terima kasih (┬┬﹏┬┬)**

[Back to Top](#readme-top)

</details>

---







