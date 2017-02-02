'use strict'

if (module.hot) {
  module.hot.accept()
}

import { mount } from 'riot'
import weeklyData from '../data/weekly_report.json'
import '../styles/index.scss'
import './components/dashboard-app.tag'
import './components/dashboard-top.tag'
import './components/dashboard-flop.tag'
import './components/dashboard-meta.tag'
import './components/dashboard-selector.tag'

mount('dashboard-app', {
  weeklyData: weeklyData
})
