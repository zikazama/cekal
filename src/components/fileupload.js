import React, { useRef, useState } from "react";
import axios from "axios";
import { Button, Container, Grid, CardContent } from "@material-ui/core";
import LinearProgressWithLabel from "./linearProgressWithLabel";
import CardJumbo from "./card";
import { withStyles } from "@material-ui/core/styles";
import TransitionAlerts from "./alert";

const styles = (theme) => ({
  buttonMargin: {
    width: "100%",
  },
});

function FileUpload(props) {
  const { classes } = props;
  const [file, setFile] = useState(""); // storing the uploaded file    // storing the recived file from backend
  const [data, getFile] = useState({ name: "", path: "" });
  const [progress, setProgess] = useState(0); // progess bar
  const [statusOpen, setStatusOpen] = useState(true);
  const [valAlert, setValAlert] = useState('');
  const el = useRef(); // accesing input element
  const handleChange = (e) => {
    setProgess(0);
    const file = e.target.files[0]; // accesing file
    console.log(file);
    setFile(file); // storing file
  };
  const reset = (e) => {
    setFile("");
    setProgess(0);
    setValAlert('');
    getFile({ name: '', path: '' });
    document.querySelector("#foto").value = null;
  };
  const uploadFile = () => {
    const formData = new FormData();
    formData.append("file", file); // appending file
    axios
      .post("https://backend.yukija.tech/api/kalori", formData, {
        onUploadProgress: (ProgressEvent) => {
          let progress =
            Math.round((ProgressEvent.loaded / ProgressEvent.total) * 100);
          setProgess(progress);
        },
      })
      .then((res) => {
        //const hasil = JSON.parse(res);
        console.log(res);
        setStatusOpen(false);
        setValAlert(
          `Nama : ${res.data.data[0].nama} | Kalori : ${res.data.data[0].kalori}`
        );
       
        getFile({ name: res.data.data[0].name, path: res.data.path });
      })
      .catch((err) => console.log(err));
  };
  return (
    <Container>
      <CardContent>
        <Grid container justify="center" alignItems="center" spacing={10}>
          <Grid item m={6} className="file-upload">
            <CardJumbo b={10} />
            <Button
              className={classes.buttonMargin}
              variant="contained"
              component="label"
            >
              Pilih Foto
              <input
                accept="image/x-png,image/gif,image/jpeg"
                id="foto"
                type="file"
                ref={el}
                onChange={handleChange}
                hidden
              />
            </Button>

            <LinearProgressWithLabel value={progress} />
            <Grid justify="space-between" container spacing={10}>
              <Grid item>
                <Button onClick={reset} variant="contained" color="secondary">
                  Reset
                </Button>
              </Grid>
              <Grid item>
                <Button
                  onClick={uploadFile}
                  variant="contained"
                  color="primary"
                >
                  Upload
                </Button>
              </Grid>
            </Grid>
            <hr />
            <TransitionAlerts statusOpen={statusOpen} value={valAlert}/> 
            {/* displaying received image*/}
            {data.path && <img src={data.path} width="345px" alt={data.name} />}
          </Grid>
        </Grid>
      </CardContent>
    </Container>
  );
}
export default withStyles(styles)(FileUpload);
