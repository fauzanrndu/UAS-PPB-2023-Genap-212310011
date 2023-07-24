import React from 'react';
import {View, StyleSheet, Text} from 'react-native';

const DetailReservasi = () => {
    return (
        <View>
            <View style={styles.boxclient}>
                <Text style={styles.textclient}>Nama  : Ojan Gaming</Text>
                <Text style={styles.textclient}>Email : Ojan@gmail.co</Text>
                <Text style={styles.textclient}>No    : 089903489430</Text>
            </View>
            <View style={styles.boxtime}>
                 <Text style={styles.texttime}>JAM 13:00 - 16:00</Text>
            </View>
      </View>
    );
  }

const styles = StyleSheet.create({
  boxclient: {
    backgroundColor: "white",
    width: 280,
    height: 130,
    borderRadius: 3,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#B4B4B4",
    shadowOffset: { width: 5, height: 4 },
    shadowOpacity: 1,
    shadowRadius: 3,
  },
  boxtime: {
    backgroundColor: "white",
    width: 200,
    height: 100,
    borderRadius: 3,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#B4B4B4",
    shadowOffset: { width: 5, height: 4 },
    shadowOpacity: 1,
    shadowRadius: 3,
  },
  textclient: {
    fontSize: 14,
    fontWeight: "bold",
    marginHorizontal: 10,
    padding: 10,
  },
});

export default DetailReservasi;
