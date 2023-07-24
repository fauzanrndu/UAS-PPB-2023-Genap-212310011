import React, { useState } from "react";
import FontAwesome5 from "react-native-vector-icons/FontAwesome5";
import {
  View,
  StyleSheet,
  SafeAreaView,
  Image,
  Text,
  TextInput,
  TouchableOpacity,
  Pressable,
} from "react-native";

const FormLogin = ({ navigation }) => {
  const [username, setUsername] = useState("admin@gmail.com");
  const [password, setPassword] = useState("admin");
  const [ValidUsername, setValidUsername] = useState("");
  const [ValidPassword, setValidPassword] = useState("");

  const handlerValidUsername = (value) => {
    setUsername(value);
    if (value) {
      setValidUsername("");
    } else {
      setValidUsername("This field is required");
    }
  };

  const handlerValidPassword = (value) => {
    setPassword(value);
    if (value) {
      setValidPassword("");
    } else {
      setValidPassword("This field is required");
    }
  };

  const handleLogin = () => {
    if (username === "admin@gmail.com" && password === "admin") {
      navigation.navigate("home");
    } else {
      setValidUsername("Invalid username or password");
      setValidPassword("Invalid username or password");
    }
  };

  const [isOpenPass, setOpenPass] = useState(true);
  const handlerOpenPass = () => {
    setOpenPass(!isOpenPass);
  };

  return (
    <View style={styles.form}>
      <Text style={styles.text_masuk}>LOGIN</Text>
      <View style={{ marginTop: 15 }}>
        <Text style={styles.label}>Username</Text>
        <View style={{ ...styles.inputan, justifyContent: "center" }}>
          <TextInput
            style={styles.text_input}
            placeholder="Masukan Username"
            placeholderTextColor={"white"}
            defaultValue={username}
            onChangeText={(text) => handlerValidUsername(text)}
          />
        </View>
        <Text
          style={{
            color: "red",
            marginHorizontal: 40,
            paddingHorizontal: 5,
            fontSize: 12,
          }}
        >
          {ValidUsername}
        </Text>
      </View>

      <View style={{ marginBottom: 15 }}>
        <Text style={styles.label}>Password</Text>
        <View
          style={{
            ...styles.inputan,
            flexDirection: "row",
            alignItems: "center",
          }}
        >
          <TextInput
            style={styles.text_input}
            secureTextEntry={isOpenPass}
            placeholder="Masukan Password"
            placeholderTextColor={"white"}
            defaultValue={password}
            onChangeText={(text) => handlerValidPassword(text)}
          />
          <Pressable onPress={handlerOpenPass} style={{ marginRight: 10 }}>
            <FontAwesome5
              name={isOpenPass ? "eye" : "eye-slash"}
              size={23}
              color="white"
            />
          </Pressable>
        </View>
        <Text
          style={{
            color: "red",
            marginHorizontal: 40,
            paddingHorizontal: 5,
            fontSize: 12,
          }}
        >
          {ValidPassword}
        </Text>
      </View>
      <TouchableOpacity style={styles.button} onPress={handleLogin}>
        <Text style={styles.text_button}>LOGIN</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  form: {
    flex: 4,
    backgroundColor: "green",
    borderTopLeftRadius: 50,
    borderTopRightRadius: 50,
  },
  label: {
    fontWeight: "bold",
    marginBottom: 10,
    color: "white",
    marginVertical: 14,
    marginHorizontal: 40,
    paddingHorizontal: 5,
    fontSize: 17,
  },
  button: {
    backgroundColor: "white",
    borderRadius: 15,
    alignSelf: "center",
    paddingVertical: 15,
    paddingHorizontal: 10,
    borderRadius: 10,
    marginTop: 40,
    width: 200,
    alignItems: "center",
  },
  text_button: {
    color: "green",
    fontWeight: "bold",
  },
  text_masuk: {
    fontWeight: "bold",
    fontSize: 25,
    color: "white",
    textAlign: "center",
    margin: 30,
  },
  text_input: {
    paddingHorizontal: 5,
    color: "white",
    fontSize: 15,
    paddingBottom: 5,
  },
  inputan: {
    justifyContent: "space-between",
    borderWidth: 1,
    height: 50,
    borderColor: "white",
    width: 300,
    borderRadius: 5,
    alignSelf: "center",
  },
});

export default FormLogin;
