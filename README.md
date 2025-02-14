# 🚀 Game Development Tutorial 2024/2025

## 📌 Table of Contents
- [🚀 Game Development Tutorial 2024/2025](#-game-development-tutorial-20242025)
  - [📌 Table of Contents](#-table-of-contents)
  - [✨ Tutorial 2 - Introduction to Game Engine ](#-tutorial-2---introduction-to-game-engine-)
    - [**1️. Apa saja pesan log yang dicetak pada panel Output?** ](#1️-apa-saja-pesan-log-yang-dicetak-pada-panel-output-)
    - [**2️. Gerakkan landasan ke batas area bawah dan kembali ke atas.** ](#2️-gerakkan-landasan-ke-batas-area-bawah-dan-kembali-ke-atas-)
    - [**3️. Buka scene `MainLevel` dengan tampilan workspace 2D.** ](#3️-buka-scene-mainlevel-dengan-tampilan-workspace-2d-)
    - [**4️. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.** ](#4️-scene-blueship-dan-stoneplatform-memiliki-child-node-bertipe-sprite-)
    - [**5️. Perbedaan `RigidBody2D` dan `StaticBody2D`.** ](#5️-perbedaan-rigidbody2d-dan-staticbody2d-)
    - [**6️. Ubah nilai atribut `Mass` pada `RigidBody2D` di BlueShip.** ](#6️-ubah-nilai-atribut-mass-pada-rigidbody2d-di-blueship-)
    - [**7️. Ubah nilai atribut `Disabled` pada `CollisionShape2D` di StonePlatform.** ](#7️-ubah-nilai-atribut-disabled-pada-collisionshape2d-di-stoneplatform-)
    - [**8️. Manipulasi `Position`, `Rotation`, dan `Scale` BlueShip.** ](#8️-manipulasi-position-rotation-dan-scale-blueship-)
    - [**9️. Mengapa nilai `Position` node tidak sesuai di Inspector?** ](#9️-mengapa-nilai-position-node-tidak-sesuai-di-inspector-)
    - [**10. Latihan Mandiri: Membuat Level Baru** ](#10-latihan-mandiri-membuat-level-baru-)
  - [✨ Tutorial 3 - Coming Soon ](#-tutorial-3---coming-soon-)

---

## ✨ Tutorial 2 - Introduction to Game Engine <a id="tutorial-2"></a>

**📌 Nama:** Samuel Taniel Mulyadi  
**📌 NPM:** 2206081805  

---

### **1️. Apa saja pesan log yang dicetak pada panel Output?** <a id="question-1"></a>
`Platform initialized`
<br>`Reached objective!`
Pesan log akan muncul saat menyentuh batas atas area permainan. Jika dilakukan berkali-kali, output `"Reached objective!"` akan terus bertambah.

### **2️. Gerakkan landasan ke batas area bawah dan kembali ke atas.** <a id="question-2"></a>

`Platform initialized`
<br>`Reached objective!`
<br>`Reached objective!`

Jika menyentuh batas atas setelah bergerak dari batas bawah, `"Reached objective!"` akan muncul setiap kali menyentuhnya.
</details>

### **3️. Buka scene `MainLevel` dengan tampilan workspace 2D.** <a id="question-3"></a>

Ya, scene `ObjectiveArea` berada di batas atas area. Oleh karena itu, saat kita menyentuhnya, pesan log yang muncul adalah:
<br>`Reached objective!`

### **4️. Scene BlueShip dan StonePlatform memiliki child node bertipe Sprite.** <a id="question-4"></a>

`Sprite` digunakan untuk menampilkan gambar (texture) dalam game. Sprite sendiri tidak memiliki properti fisika, tetapi dapat berinteraksi dengan dunia game jika dikombinasikan dengan `CollisionShape2D`.


### **5️. Perbedaan `RigidBody2D` dan `StaticBody2D`.** <a id="question-5"></a>

- **`RigidBody2D`**: Memiliki simulasi fisika aktif (dipengaruhi gravitasi, gaya, dan tabrakan).  
- **`StaticBody2D`**: Tidak bergerak, tetapi bisa berinteraksi dengan objek lain. Biasanya digunakan untuk lantai dan dinding.


### **6️. Ubah nilai atribut `Mass` pada `RigidBody2D` di BlueShip.** <a id="question-6"></a>

- **Jika `mass` meningkat** → BlueShip lebih sulit dipercepat dan lebih lambat bergerak.  
- **Jika `mass` berkurang** → BlueShip lebih mudah terdorong oleh gaya atau tabrakan.

Efeknya tidak selalu terlihat jelas dan perlu diamati dengan teliti.

### **7️. Ubah nilai atribut `Disabled` pada `CollisionShape2D` di StonePlatform.** <a id="question-7"></a>

Jika atribut `Disabled = true`, maka **StonePlatform tidak akan memiliki bentuk tabrakan**, sehingga BlueShip bisa menembusnya seperti tidak ada objek di sana.


### **8️. Manipulasi `Position`, `Rotation`, dan `Scale` BlueShip.** <a id="question-8"></a>
- **`Position`** → Mengubah koordinat BlueShip dalam dunia game.  
- **`Rotation`** → Memutar BlueShip.  
- **`Scale`** → Tidak dapat diubah langsung di `RigidBody2D`, harus melalui `Sprite` dalam scene `BlueShip`.

📌 Jika mencoba mengubah ukuran `RigidBody2D`, akan muncul error:
<br>`Size changes to RigidBody2D will be overridden by the physics engine when running. Change the size in children collision shapes.`

### **9️. Mengapa nilai `Position` node tidak sesuai di Inspector?** <a id="question-9"></a>

Karena **StonePlatform** dan **StonePlatform2** berada dalam **Node Parent `PlatformBlue`**, maka transformasi (Position, Rotation, Scale) yang terlihat di Inspector **berdasarkan parent**.

📌 **Godot mewarisi transformasi parent ke child nodes**, jadi jika parent memiliki offset, semua child akan mengikuti relatif terhadapnya.

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

---

## ✨ Tutorial 3 - Coming Soon <a id="tutorial-3"></a>







