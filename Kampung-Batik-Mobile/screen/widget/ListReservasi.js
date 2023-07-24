import React from "react";
import {
  View,
  FlatList,
  StyleSheet,
  Text,
  TouchableOpacity,
} from "react-native";
import { reservasiObj } from "../../data/reservasi";

const ListReservasi = ({navigation}) => {
  const renderColumnItem = ({ item }) => (
    <TouchableOpacity>
      <View style={styles.reservasi}>
        <Text style={styles.textdate}>{item.date}</Text>
        <Text style={styles.textdesc}>{item.desc}</Text>
        <Text style={styles.textdetail}>Detail Reservasi</Text>
      </View>
    </TouchableOpacity>
  );
  return (
    <FlatList
      data={reservasiObj}
      keyExtractor={(item) => item.id.toString()}
      renderItem={renderColumnItem}
    />
  );
};

const styles = StyleSheet.create({
  reservasi: {
    flex: 1,
    backgroundColor: "white",
    width: 300,
    height: 140,
    borderRadius: 10,
    shadowColor: "#171717",
    shadowOffset: { width: 3, height: 3 },
    shadowOpacity: 0.5,
    shadowRadius: 2,
    marginBottom: 10,
    marginHorizontal: 14,
    marginLeft: 45,
    borderColor: "gray",
  },
  column: {
    flex: 1,
    paddingHorizontal: 20,
    paddingVertical: 5,
  },
  textdate: {
    fontSize: 25,
    fontWeight: "bold",
    marginHorizontal: 10,
    marginVertical: 10,
  },
  textdesc: {
    fontSize: 17,
    marginHorizontal: 10,
    marginVertical: -5,
  },
  textdetail: {
    fontSize: 15,
    textDecorationLine: "underline",
    marginHorizontal: 10,
    marginVertical: 50,
  },
});

export default ListReservasi;
