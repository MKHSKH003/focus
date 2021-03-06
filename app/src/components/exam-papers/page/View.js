import React, { useState } from 'react';
import {
    StyleSheet,
    Text,
    View,
    Image,
    ScrollView,
    TouchableOpacity,
    FlatList,
    Linking
} from 'react-native';
import { SearchBar } from 'react-native-elements';

import Layout from '../../../shared/constants/Layout';
import _pickDocument from '../document-picker-util';
import { onError } from '../../../shared/components/notifications';

var uploadPdf = require('../../../shared/images/upload-pdf.png');

const ExamPapers = ({
    examPapers,
    uploadExamPaper,
    setUploadInProgress,
    currentUser
}) => {
    const [gradeID, setToggleGrade] = useState(1)
    const [search, setSearch] = useState('');
   
    renderItem = ({ item }) => {
        return (
            <TouchableOpacity onPress={() => Linking.openURL(item.Url)}>
                <View style={styles.box}>
                    <Image style={styles.icon} source={{ uri: 'https://img.icons8.com/officel/80/000000/export-pdf.png' }} />
                    <Text style={styles.title}>{item.Name}</Text>
                    {/*<Image style={styles.btn} source={{ uri: "https://img.icons8.com/flat_round/50/000000/delete-sign.png" }} />*/}
                </View>
            </TouchableOpacity>
        );
    }

    return (
        <ScrollView style={styles.container}>
            <View style={styles.header}>
                <View style={styles.searchBar}>
                    <SearchBar
                        placeholder="Search Here..."
                        onChangeText={key => setSearch(key)}
                        value={search}
                    />
                </View>
                <View style={styles.headerContent}>
                    <TouchableOpacity onPress={() => currentUser.IsAdmin == 1 ? _pickDocument({ uploadExamPaper, setUploadInProgress, gradeID }) : onError("Access denied")}>
                        <Image style={styles.avatar} source={(uploadPdf)} />
                    </TouchableOpacity>
                </View>
            </View>
            <View style={styles.body}>
                <View style={styles.box}>
                   <TouchableOpacity onPress={() => setToggleGrade(1)}>
                      <Image style={styles.icon} source={{ uri: 'https://img.icons8.com/metro/52/000000/back.png' }} />
                   </TouchableOpacity>
                    <Text style={styles.gradeTitle}> {gradeID == 1 ? 'Grade 12' : 'Grade 11'}</Text>
                    <TouchableOpacity onPress={() => setToggleGrade(2)}>
                       <Image style={styles.icon} source={{ uri: "https://img.icons8.com/metro/52/000000/forward.png" }} />
                    </TouchableOpacity>
                </View>

                <FlatList
                    data={examPapers.filter(examPaper => examPaper.Name.includes(search) && examPaper.GradeId == gradeID)}
                    keyExtractor={item => item.Id + ''}
                    renderItem={this.renderItem}
                />
            </View>
        </ScrollView>
    );
}


const styles = StyleSheet.create({
    header: {
        flex: 1,
        flexDirection: 'row',
        paddingBottom: 20,
        paddingTop: 5,
        padding: 1
    },
    headerContent: {
        alignItems: 'center',
    },
    avatar: {
        width: Layout.window.width/7,
        height: 57,
        marginLeft: 5
    },
    searchBar: {
        width: Layout.window.width - Layout.window.width/7,
        borderRadius: 13,
    },
    icon: {
        width: 40,
        height: 40,
    },
    title: {
        fontSize: 15,
        color: "#778899",
        marginLeft: 4
    },
    gradeTitle: {
        flex: 1,
        fontSize: 30,
        color: "#778899",
        textAlign: "center"
    },
    name: {
        color: '#778899'
    },
    btn: {
        marginLeft: 'auto',
        width: 20,
        height: 20,
    },
    body: {
        backgroundColor: "#E6E6FA",
    },
    box: {
        padding: 5,
        marginBottom: 2,
        backgroundColor: '#FFFFFF',
        flexDirection: 'row',
        shadowColor: 'black',
        shadowOpacity: .2,
        shadowOffset: {
            height: 1,
            width: -2
        },
        elevation: 2
    },
    username: {
        color: "#20B2AA",
        fontSize: 22,
        alignSelf: 'center',
        marginLeft: 10
    }
});


export default ExamPapers;