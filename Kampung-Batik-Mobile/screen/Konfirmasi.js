import React from 'react';
import {View, StyleSheet , Text} from 'react-native';
import ListReservasi from "./widget/ListReservasi";

const Konfirmasi = () => {
    return (
        <View>
            <Text style={styles.textlist}>List Pengajuan Reservasi</Text>
            <View>
            <ListReservasi />
            </View>
        </View>
    );
}

const styles = StyleSheet.create({
    textlist: {
        fontSize: 25,
        fontWeight: "bold",
        marginHorizontal: 10,
        marginVertical: 20,
        marginLeft: 30,
        padding: 10,
    },
})

export default Konfirmasi;
