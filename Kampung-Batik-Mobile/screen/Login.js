import React, { Component } from "react";
import { View, StyleSheet, Text, Image, SafeAreaView } from "react-native";
import FormLogin from "./widget/FormLogin";

class Login extends Component {
  render() {
    const { navigation } = this.props;

    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.logo}>
          <Image
            source={require("../assets/Logo.png")}
            style={{ height: 200, width: 250 }}
          />
        </View>

        <FormLogin navigation={navigation} />
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  logo: {
    flex: 2,
    justifyContent: "center",
    alignItems: "center",
  },
});

export default Login;
