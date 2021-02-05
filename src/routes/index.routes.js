const router = require('express').Router();
const adminRouter = require('./admin.routes.js');
const myinfoRouter = require('./myinfo.routes.js')
const experienceRouter = require('./experience.routes.js')
const skillRouter = require('./skill.routes.js')
const contactRouter = require('./contact.routes.js')

router.use('/admins', adminRouter);
router.use('/myinfos', myinfoRouter);
router.use('/experiences', experienceRouter);
router.use('/skills', skillRouter);
router.use('/contacts', contactRouter);

module.exports = router;