import * as React from "react";
import {
  View,
  StyleSheet,
  ScrollView,
  Text,
  TextInput,
  Image,
  TouchableOpacity,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";

const Searchbar = ({ navigation }) => {
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.field}>
        <View style={styles.input}>
          <Image
            source={require("../../assets/search.png")}
            style={{ ...styles.icon, left: -20 }}
          />
          <TextInput
            placeholder="Cari Sesuatu"
            style={{ textAlign: "left" }}
          />
        </View>

        <View style={{ padding: 10, flexDirection: "row" }}>
          <TouchableOpacity>
            <Image
              source={require("../../assets/filter.png")}
              style={{ ...styles.icon }}
            />
          </TouchableOpacity>
          <TouchableOpacity onPress={() => navigation.navigate("Kelolatoko")}>
            <Image
              source={require("../../assets/edit.png")}
              style={{ ...styles.icon, marginLeft: 10 }}
            />
          </TouchableOpacity>
        </View>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 0.3,
  },
  field: {
    width: "90%",
    flexDirection: "row",
    justifyContent: "space-evenly",
  },
  input: {
    borderWidth: 1,
    borderRadius: 10,
    height: 40,
    width: "80%",
    paddingHorizontal: 30,
    alignItems: "center",
    justifyContent: "flex-start",
    flexDirection: "row",
    marginLeft: -10,
  },
  icon: {
    width: 20,
    height: 20,
  },
});

export default Searchbar;
