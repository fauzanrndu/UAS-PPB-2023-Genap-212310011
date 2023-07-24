import React, { Component } from "react";
import { View, StyleSheet, Text, Image, TouchableOpacity } from "react-native";
import { SafeAreaView } from "react-native";
import MenuHome from "./widget/MenuHome";
import ScheduleHome from "./widget/ScheduleHome";
import Toko from "./Toko";

class Home extends Component {
  render() {
    const { navigation } = this.props;
    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.header}>
          <View style={styles.user}>
            <View>
              <Image
                source={require("../assets/user.png")}
                style={{ height: 60, width: 60 }}
              />
            </View>
            <View
              style={{
                marginHorizontal: 10,
                justifyContent: "center",
              }}
            >
              <Text style={{ fontWeight: "bold", color: "white" }}>ADMIN</Text>
              <Text style={{ color: "white" }}>Kampung Batik Cibuluh</Text>
            </View>
          </View>
          <TouchableOpacity onPress={() => navigation.navigate("Calendar")}>
            <View style={{ marginHorizontal: 20, marginVertical: 20 }}>
              <Image
                source={require("../assets/calender.png")}
                style={{ height: 50, width: 50 }}
              />
            </View>
          </TouchableOpacity>
        </View>

        <View style={{ flex: 1, padding: 40 }}>
          <MenuHome navigation={navigation} />
        </View>

        <View style={{ flex: 2 }}>
          <ScheduleHome />
        </View>
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    flex: 0.7,
    backgroundColor: "green",
    borderBottomRightRadius: 25,
    borderBottomLeftRadius: 25,
    justifyContent: "space-between",
    flexDirection: "row",
    alignItems: "center",
    marginTop: 20,
  },
  user: {
    flexDirection: "row",
    marginHorizontal: 20,

    justifyContent: "center",
  },
});

export default Home;
