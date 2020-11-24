import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Alert from '@material-ui/lab/Alert';
import CheckCircleOutlineIcon from '@material-ui/icons/CheckCircleOutline';

const useStyles = makeStyles((theme) => ({
  root: {
    width: '100%',
    '& > * + *': {
      marginTop: theme.spacing(2),
    },
  },
}));

export default function TransitionAlerts(props) {
  const classes = useStyles();
  const [open, setOpen] = React.useState(props.statusOpen);

  return (
    <div className={classes.root}>
       <Alert iconMapping={{ success: <CheckCircleOutlineIcon fontSize="inherit" /> }}>
        {props.value}
      </Alert>
     
    </div>
  );
}