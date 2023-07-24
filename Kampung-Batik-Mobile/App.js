import { StatusBar } from "expo-status-bar";
import { BackHandler, StyleSheet, Text, View } from "react-native";
import Toko from "./screen/Toko";
import Login from "./screen/Login";
import Home from "./screen/Home";
import Reservasi from "./screen/Reservasi";
import KelolaToko from "./screen/KelolaToko";
import TambahProduk from "./screen/TambahProduk";
import Riwayat from "./screen/Riwayat";
import Konfirmasi from "./screen/Konfirmasi";
import Calendar from "./screen/widget/Calendar";
import DetailProduk from "./screen/DetailProduk";


import { createNativeStackNavigator } from "@react-navigation/native-stack";
import { NavigationContainer } from "@react-navigation/native";
import { SearchBar } from "react-native-screens";



const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen
          name="Login"
          component={Login}
          options={{
            headerShown: false,
          }}
        />
        <Stack.Screen
          name="home"
          component={Home}
          options={{ headerShown: false, gestureEnabled : false }}
        />

        <Stack.Screen
          name="Toko"
          component={Toko}
          options={{ headerShown: true, headerTitle: "List Produk" }}

        />
          <Stack.Screen
          name="DetailProduk"
          component={DetailProduk}
          options={{ headerShown: true, }}
          
        />
        <Stack.Screen
          name="Kelolatoko"
          component={KelolaToko}s
          options={{ headerShown: true }}
        />

        <Stack.Screen
          name="Calendar"
          component={Calendar}
          options={{ headerShown: true }}
        />


        <Stack.Screen
          name="Reservasi"
          component={Reservasi}
          options={{ headerShown: true }}
        />
        <Stack.Screen
          name="Riwayat"
          component={Riwayat}
          options={{ headerShown: true }}
        />
         <Stack.Screen
          name="Konfirmasi"
          component={Konfirmasi}
          options={{ headerShown: true }}
        />
        <Stack.Screen
          name="TambahProduk"
          component={TambahProduk}
          options={{ headerShown: true }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({});
