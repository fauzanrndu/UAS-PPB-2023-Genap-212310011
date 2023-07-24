import React, { useEffect, useState } from "react";
import { View, StyleSheet, Text, FlatList, Image } from "react-native";
import axios from "axios";
import { TouchableOpacity } from "react-native-web";

const ListProduct = ({navigation}) => {
  const [data, setData] = useState([]);

  const FetchProduct = () => {
    console.log("test");
    let config = {
      method: "get",
      maxBodyLength: Infinity,
      url: "http://localhost:8000/api/product",
      headers: {
        Accept: "application/json",
      },
    };

    axios
      .request(config)
      .then((response) => {
        //console.log(JSON.stringify(response.data));
        setData(response.data.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    //fetchData();
    FetchProduct();
  }, []);

  const renderColumnItem = ({ item }) => {
    return (
      <TouchableOpacity onPress={() => navigation.navigate("DetailProduk")}>
        <View style={styles.product}>
          <Image source={{ uri: item.image }} style={styles.image} />
          <Text style={{fontWeight:"bold"}}>{item.name}</Text>
        </View>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <FlatList
        data={data}
        keyExtractor={(item) => item.id.toString()}
        renderItem={renderColumnItem}
        numColumns={2}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 10,
  },
  columnItem: {
    flex: 0.5,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: "#ccc",
    padding: 10,
  },

  product: {
    flex: 1,
    backgroundColor: "white",
    width: 165,
    height: 200,
    borderRadius: 5,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#171717",
    shadowOffset: { width: 3, height: 3 },
    shadowOpacity: 0.5,
    shadowRadius: 2,
    marginBottom: 10,
    marginHorizontal: 14,
    padding: 10,
    borderColor: "gray",
  },

  image: {
    width: 100,
    height: 150,
    padding: 10,
  },
});

export default ListProduct;
