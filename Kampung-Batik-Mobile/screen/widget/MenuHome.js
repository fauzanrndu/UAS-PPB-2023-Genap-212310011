import React from "react";
import { View, StyleSheet, Text, TouchableOpacity, Image } from "react-native";

const MenuHome = ({ navigation }) => {
  return (
    <View style={styles.menu}>
      <TouchableOpacity onPress={() => navigation.navigate("Toko")}>
        <View style={styles.toko}>
          <Image
            source={require("../../assets/market.png")}
            style={{ width: 50, height: 50 }}
          />
          <Text style={styles.text}>Toko</Text>
        </View>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigation.navigate("Reservasi")}>
        <View style={styles.reservasi}>
          <Image
            source={require("../../assets/book.png")}
            style={{ width: 50, height: 50 }}
          />
          <Text style={styles.text}>Reservasi</Text>
        </View>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  menu: {
    flexDirection: "row",
    justifyContent: "space-around",
  },
  toko: {
    backgroundColor: "green",
    width: 130,
    height: 160,
    borderRadius: 5,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#171717",
    shadowOffset: { width: 2, height: 4 },
    shadowOpacity: 0.5,
    shadowRadius: 3,
  },
  reservasi: {
    backgroundColor: "green",
    width: 130,
    height: 160,
    borderRadius: 5,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#171717",
    shadowOffset: { width: 2, height: 4 },
    shadowOpacity: 0.5,
    shadowRadius: 3,
  },
  text: {
    color: "white",
    padding: 10,
  },
});

export default MenuHome;
