import React, { useState } from "react";
import {
  View,
  StyleSheet,
  Text,
  TouchableOpacity,
  TextInput,
  
  Modal,
} from "react-native";
import axios from "axios";

const TambahProduk = () => {
  const [namaProduk, setNamaProduk] = useState("");
  const [deskripsiProduk, setDeskripsiProduk] = useState("");
  const [kategoriProduk, setKategoriProduk] = useState("");
  const [hargaProduk, setHargaProduk] = useState("");
  const [gambarProduk, setGambarProduk] = useState("");
  const [showModal, setShowModal] = useState(false);

  const tambahkanProduk = () => {
    const data = {
      name: namaProduk,
      description: deskripsiProduk,
      category_id: kategoriProduk,
      price: hargaProduk,
      image: gambarProduk,
    };

    axios
      .post("http://localhost:8000/api/product", data)
      .then((response) => {
        console.log("Produk berhasil ditambahkan");
        setShowModal(true);
      })
      .catch((error) => {
        console.error("Terjadi kesalahan saat menambahkan produk:", error);
      });
  };

  return (
    <View>
      <View>
        <Text style={styles.label}>Gambar Produk</Text>
        <View style={styles.inputan}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Image"
            placeholderTextColor="black"
            value={gambarProduk}
            onChangeText={setGambarProduk}
          />
        </View>
      </View>
      <View>
        <Text style={styles.label}>Nama Produk</Text>
        <View style={styles.inputan}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Nama Produk"
            placeholderTextColor="black"
            value={namaProduk}
            onChangeText={setNamaProduk}
          />
        </View>
      </View>

      <View>
        <Text style={styles.label}>Deskripsi Produk</Text>
        <View style={styles.inputan}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Deskripsi Produk"
            placeholderTextColor="black"
            value={deskripsiProduk}
            onChangeText={setDeskripsiProduk}
          />
        </View>
      </View>

      <View>
        <Text style={styles.label}>Pilih Kategori</Text>
        <View style={styles.inputan}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Kategori"
            placeholderTextColor="black"
            value={kategoriProduk}
            onChangeText={setKategoriProduk}
          />
        </View>
      </View>

      <View>
        <Text style={styles.label}>Masukan Harga</Text>
        <View style={styles.inputan}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Harga"
            placeholderTextColor="black"
            value={hargaProduk}
            onChangeText={setHargaProduk}
          />
        </View>
      </View>

      <TouchableOpacity style={styles.button} onPress={tambahkanProduk}>
        <Text style={styles.text_button}>Tambahkan</Text>
      </TouchableOpacity>
      <Modal
        visible={showModal}
        animationType="slide"
        transparent={true}
        onRequestClose={() => setShowModal(false)}
      >
        <View style={styles.modalContainer}>
          <View style={styles.modalContent}>
            <Text style={styles.modalText}>Produk berhasil ditambahkan!</Text>
            <TouchableOpacity
              style={styles.modalButton}
              onPress={() => setShowModal(false)}
            >
              <Text style={styles.modalButtonText}>OK</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  text_input: {
    paddingHorizontal: 5,
    color: "black",
    fontSize: 15,
    paddingBottom: 5,
  },
  inputan: {
    justifyContent: "space-between",
    borderWidth: 1,
    height: 50,
    borderColor: "black",
    width: 300,
    borderRadius: 5,
    alignSelf: "center",
  },
  label: {
    fontWeight: "bold",
    marginBottom: 10,
    color: "black",
    marginVertical: 14,
    marginHorizontal: 40,
    paddingHorizontal: 5,
    fontSize: 17,
  },
  button: {
    backgroundColor: "green",
    borderRadius: 15,
    alignSelf: "center",
    paddingVertical: 15,
    paddingHorizontal: 10,
    borderRadius: 10,
    marginTop: 40,
    width: 200,
    alignItems: "center",
  },
  text_button: {
    color: "white",
    fontWeight: "bold",
  },
  modalContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "rgba(0, 0, 0, 0.5)",
  },
  modalContent: {
    backgroundColor: "white",
    padding: 20,
    borderRadius: 10,
    alignItems: "center",
  },
  modalText: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 20,
  },
  modalButton: {
    backgroundColor: "green",
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 5,
  },
  modalButtonText: {
    color: "white",
    fontWeight: "bold",
  },
});

export default TambahProduk;
