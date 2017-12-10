# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171210204208) do

  create_table "systems", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "companyName"
    t.string "systemName"
    t.integer "serialNumber"
    t.integer "productFamily"
    t.integer "model"
    t.string "osVersion"
    t.integer "cpgCount"
    t.string "recommended_osVersion"
    t.string "location_region"
    t.string "location_country"
    t.string "installDate"
    t.string "updated"
    t.integer "nodes_nodeCount"
    t.integer "nodes_nodeCountOffline"
    t.integer "disks_total_diskCount"
    t.integer "disks_total_diskCountNormal"
    t.integer "disks_total_diskCountDegraded"
    t.integer "disks_total_diskCountFailed"
    t.string "disksState"
    t.integer "vvCount"
    t.integer "tpvvCount"
    t.decimal "capacity_total_freePct", precision: 10
    t.decimal "capacity_total_freeTiB", precision: 10
    t.decimal "capacity_byType_fc_freeTiB", precision: 10
    t.decimal "capacity_byType_nl_freeTiB", precision: 10
    t.decimal "capacity_byType_ssd_freeTiB", precision: 10
    t.decimal "capacity_total_sizeTiB", precision: 10
    t.decimal "capacity_byType_fc_sizeTiB", precision: 10
    t.decimal "capacity_byType_nl_sizeTiB", precision: 10
    t.decimal "capacity_byType_ssd_sizeTiB", precision: 10
    t.decimal "capacity_total_compactionRatio", precision: 10
    t.decimal "capacity_total_compressionRatio", precision: 10
    t.decimal "capacity_total_dedupeRatio", precision: 10
    t.decimal "performance_portBandwidthData_total_dataRateKBPSAvg", precision: 10
    t.integer "performance_portBandwidthData_total_iopsAvg"
    t.decimal "performance_portBandwidthData_total_iopsMax", precision: 10
    t.decimal "performance_summary_portInfo_totalServiceTimeMillis", precision: 10
    t.decimal "performance_summary_portInfo_readServiceTimeMillis", precision: 10
    t.decimal "performance_summary_portInfo_writeServiceTimeMillis", precision: 10
    t.decimal "performance_summary_delAckPct", precision: 10
    t.decimal "performance_summary_vvInfo_vvsByType_ssd_readBandwidthMBPS", precision: 10
    t.decimal "performance_summary_vvInfo_vvsByType_ssd_writeBandwidthMBPS", precision: 10
    t.decimal "performance_summary_vvInfo_vvsByType_ssd_readServiceTimeMillis", precision: 10
    t.decimal "performance_summary_vvInfo_vvsByType_ssd_writeServiceTimeMillis", precision: 10
    t.integer "nodes_cpuAvgMax"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
