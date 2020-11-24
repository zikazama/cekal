import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardContent from '@material-ui/core/CardContent';
import Typography from '@material-ui/core/Typography';

const useStyles = makeStyles({
  root: {
    maxWidth: 345,
  },
  media: {
    height: 140,
  },
});

export default function CardJumbo() {
  const classes = useStyles();

  return (
    <Card className={classes.root}>
      <CardActionArea>
        <CardContent>
          <Typography gutterBottom variant="h5" component="h2">
            CEKAL
          </Typography>
          <Typography variant="body2" color="textSecondary" component="p">
            CEKAL adalah aplikasi Cek Kalori Agar Langsing.
            Silahkan pilih gambar dan upload foto untuk melihat kalori pada sebuah objek makanan.
          </Typography>
        </CardContent>
      </CardActionArea>
     
    </Card>
  );
}