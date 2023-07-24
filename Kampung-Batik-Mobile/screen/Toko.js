import React, { Component } from "react";
import { View, StyleSheet, Text } from "react-native";
import Searchbar from "./widget/Searchbar";
import { productObj } from "../data/product";
import ListProduct from "./widget/ListProduct";

class Toko extends Component {
  render() {
    const { navigation } = this.props;
    return (
      <View style={styles.atas}>
        <View style={styles.container}>
          <Searchbar navigation={navigation} />
        </View>

        <View style={styles.list}>
          <ListProduct navigation={navigation} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  atas: {
    flex: 1,
  },
  container: {
    alignItems: "center",
    justifyContent: "center",
    flex: 0.2,
  },

  list: {
    flex: 1,
  },
});

export default Toko;
