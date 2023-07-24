import React from "react";
import { View, StyleSheet, Text, Image, TouchableOpacity } from "react-native";

const ScheduleHome = () => {
  return (
    <View style={styles.item}>
      <View style={styles.schedule}>
        <View style={styles.textContainer}>
          <Text style={styles.jadwal}>Jadwal</Text>
          <Text style={styles.reservasi}>Reservasi Selanjutnya</Text>
          <Text style={styles.tanggal}>Kamis 25 Mei,</Text>
          <Text style={styles.tanggal}>13:00 WIB</Text>
          <Text style={styles.desc}>Experience Membatik, IBIK</Text>
        </View>
        <TouchableOpacity>
          <View style={{ paddingVertical: 10 }}>
            <Image
              source={require("../../assets/right.png")}
              style={{ width: 50, height: 50 }}
            />
          </View>
        </TouchableOpacity>
      </View>

      <View>
        <Image
          source={require("../../assets/ibuibu.png")}
          style={{ width: 150, height: 150 }}
        />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  jadwal: {
    fontSize: 25,
    fontWeight: "bold",
  },
  reservasi: {
    fontSize: 15,
  },
  item: {
    marginHorizontal: 20,
    color: "white",
    flexDirection: "row",
    justifyContent: "space-between",
  },
  tanggal: {
    fontSize: 20,
    fontWeight: "bold",
  },
  desc: {
    fontSize: 18,
  },
  schedule: {},
});

export default ScheduleHome;
