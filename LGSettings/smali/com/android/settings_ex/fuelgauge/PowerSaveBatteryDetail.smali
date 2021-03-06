.class public Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaveBatteryDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail$2;
    }
.end annotation


# static fields
.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mGraphGroup:Landroid/preference/PreferenceGroup;

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 753
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08051c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200f4

    iget-wide v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    iget-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 813
    :cond_0
    iget-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings_ex/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .local v0, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    iput p5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->iconId:I

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 8
    .parameter

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 745
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08051f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020102

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 749
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 664
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 666
    .local v6, phoneOnPower:D
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08051e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02010f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 668
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 692
    const-wide/16 v8, 0x0

    .line 693
    .local v8, power:D
    sget v10, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 694
    .local v10, BINS:I
    const-wide/16 v5, 0x0

    .line 695
    .local v5, signalTimeMs:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 697
    .local v15, strengthTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 699
    add-long/2addr v5, v15

    .line 695
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 701
    .end local v15           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    .line 702
    .local v13, scanningTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08051d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200f7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v11

    .local v11, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 711
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 671
    const-wide/16 v8, 0x0

    .line 672
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 673
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 676
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 677
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 679
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 680
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 676
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 686
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08051a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020109

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 689
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    iget-wide v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    sub-long v3, v2, v7

    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08051b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020110

    iget-wide v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .local v1, wbs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #wbs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 776
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 780
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 781
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 782
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 783
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 786
    :goto_1
    return-wide v0

    .line 776
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 786
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 826
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 827
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 828
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    const-string v1, "PowerSaveBatteryDetail"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 81

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/hardware/SensorManager;

    .line 470
    .local v48, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move/from16 v77, v0

    .line 471
    .local v77, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v53

    .line 472
    .local v53, speedSteps:I
    move/from16 v0, v53

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 473
    .local v38, powerCpuNormal:[D
    move/from16 v0, v53

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 474
    .local v20, cpuSpeedStepTimes:[J
    const/16 v35, 0x0

    .local v35, p:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v38, v35

    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getAverageDataCost()D

    move-result-wide v16

    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v65

    .local v65, uSecTime:J
    const-wide/16 v14, 0x0

    .local v14, appWakelockTime:J
    const/16 v34, 0x0

    .local v34, osApp:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    move-wide/from16 v0, v65

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v65

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->updateStatsPeriod(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v67

    .line 484
    .local v67, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v67 .. v67}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 485
    .local v13, NU:I
    const/16 v31, 0x0

    .local v31, iu:I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_16

    .line 486
    move-object/from16 v0, v67

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 487
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v36, 0x0

    .line 488
    .local v36, power:D
    const-wide/16 v28, 0x0

    .line 489
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 491
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v41

    .line 492
    .local v41, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 493
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 494
    .local v18, cpuFgTime:J
    const-wide/16 v75, 0x0

    .line 495
    .local v75, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 496
    .local v26, gpsTime:J
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 499
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 502
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-string v5, "com.android.cardock"

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 660
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v36           #power:D
    .end local v41           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v75           #wakelockTime:J
    :cond_2
    :goto_3
    return-void

    .line 506
    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    .restart local v11       #u:Landroid/os/BatteryStats$Uid;
    .restart local v18       #cpuFgTime:J
    .restart local v21       #cpuTime:J
    .restart local v23       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v26       #gpsTime:J
    .restart local v28       #highestDrain:D
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v36       #power:D
    .restart local v41       #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v75       #wakelockTime:J
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Proc;

    .line 507
    .local v42, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v68

    .line 508
    .local v68, userTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v55

    .line 509
    .local v55, systemTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 510
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 511
    add-long v5, v68, v55

    const-wide/16 v9, 0xa

    mul-long v62, v5, v9

    .line 512
    .local v62, tmpCpuTime:J
    const/16 v64, 0x0

    .line 514
    .local v64, totalTimeAtSpeeds:I
    const/16 v54, 0x0

    .local v54, step:I
    :goto_4
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    .line 515
    move-object/from16 v0, v42

    move/from16 v1, v54

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v54

    .line 516
    move/from16 v0, v64

    int-to-long v5, v0

    aget-wide v9, v20, v54

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v64, v0

    .line 514
    add-int/lit8 v54, v54, 0x1

    goto :goto_4

    .line 518
    :cond_4
    if-nez v64, :cond_5

    const/16 v64, 0x1

    .line 520
    :cond_5
    const-wide/16 v39, 0x0

    .line 521
    .local v39, processPower:D
    const/16 v54, 0x0

    :goto_5
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_6

    .line 522
    aget-wide v5, v20, v54

    long-to-double v5, v5

    move/from16 v0, v64

    int-to-double v9, v0

    div-double v43, v5, v9

    .line 523
    .local v43, ratio:D
    move-wide/from16 v0, v62

    long-to-double v5, v0

    mul-double v5, v5, v43

    aget-wide v9, v38, v54

    mul-double/2addr v5, v9

    add-double v39, v39, v5

    .line 521
    add-int/lit8 v54, v54, 0x1

    goto :goto_5

    .line 525
    .end local v43           #ratio:D
    :cond_6
    add-long v21, v21, v62

    .line 526
    add-double v36, v36, v39

    .line 527
    if-eqz v8, :cond_7

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 529
    :cond_7
    move-wide/from16 v28, v39

    .line 530
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 531
    :cond_8
    cmpg-double v5, v28, v39

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 533
    move-wide/from16 v28, v39

    .line 534
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 540
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v39           #processPower:D
    .end local v42           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v54           #step:I
    .end local v55           #systemTime:J
    .end local v62           #tmpCpuTime:J
    .end local v64           #totalTimeAtSpeeds:I
    .end local v68           #userTime:J
    :cond_9
    cmp-long v5, v18, v21

    if-lez v5, :cond_a

    .line 544
    move-wide/from16 v21, v18

    .line 546
    :cond_a
    const-wide v5, 0x408f400000000000L

    div-double v36, v36, v5

    .line 549
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v74

    .line 551
    .local v74, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v74 .. v74}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/util/Map$Entry;

    .line 552
    .local v73, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v73 .. v73}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 555
    .local v72, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 556
    .local v61, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v61, :cond_b

    .line 557
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v75, v75, v5

    goto :goto_6

    .line 560
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    .end local v72           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v73           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_c
    const-wide/16 v5, 0x3e8

    div-long v75, v75, v5

    .line 561
    add-long v14, v14, v75

    .line 564
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 568
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v57

    .line 569
    .local v57, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v59

    .line 570
    .local v59, tcpBytesSent:J
    add-long v5, v57, v59

    long-to-double v5, v5

    mul-double v5, v5, v16

    add-double v36, v36, v5

    .line 573
    move-wide/from16 v0, v65

    move/from16 v2, v77

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v78, v5, v9

    .line 574
    .local v78, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    add-long v5, v5, v78

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    .line 575
    move-wide/from16 v0, v78

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 579
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v49

    .line 581
    .local v49, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 582
    .local v47, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Sensor;

    .line 583
    .local v45, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v52

    .line 584
    .local v52, sensorType:I
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 585
    .restart local v61       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v50, v5, v9

    .line 586
    .local v50, sensorTime:J
    const-wide/16 v32, 0x0

    .line 587
    .local v32, multiplier:D
    packed-switch v52, :pswitch_data_0

    .line 593
    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v46

    .line 595
    .local v46, sensorData:Landroid/hardware/Sensor;
    if-eqz v46, :cond_d

    .line 596
    invoke-virtual/range {v46 .. v46}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v32, v0

    .line 603
    .end local v46           #sensorData:Landroid/hardware/Sensor;
    :cond_d
    :goto_8
    move-wide/from16 v0, v50

    long-to-double v5, v0

    mul-double v5, v5, v32

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 604
    goto :goto_7

    .line 589
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v32

    .line 590
    move-wide/from16 v26, v50

    .line 591
    goto :goto_8

    .line 609
    .end local v32           #multiplier:D
    .end local v45           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v47           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v50           #sensorTime:J
    .end local v52           #sensorType:I
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    :cond_e
    const-wide/16 v5, 0x0

    cmpl-double v5, v36, v5

    if-gtz v5, :cond_f

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_10

    .line 610
    :cond_f
    new-instance v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v80, 0x0

    aput-wide v36, v12, v80

    invoke-direct/range {v4 .. v12}, Lcom/android/settings_ex/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .local v4, app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    move-wide/from16 v0, v78

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    move-wide/from16 v0, v75

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    move-wide/from16 v0, v57

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    move-wide/from16 v0, v59

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v34, v4

    .end local v4           #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_13

    .line 632
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    :goto_a
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .restart local v4       #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_11
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_12

    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 625
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v4           #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_13
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_14

    .line 634
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    goto :goto_a

    .line 636
    :cond_14
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v5, v36, v5

    if-lez v5, :cond_15

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 637
    :cond_15
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    goto :goto_a

    .line 645
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v36           #power:D
    .end local v41           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v49           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v57           #tcpBytesReceived:J
    .end local v59           #tcpBytesSent:J
    .end local v74           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v75           #wakelockTime:J
    .end local v78           #wifiRunningTimeMs:J
    :cond_16
    if-eqz v34, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v70, v5, v9

    .line 648
    .local v70, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    sub-long v5, v14, v5

    sub-long v70, v70, v5

    .line 650
    const-wide/16 v5, 0x0

    cmp-long v5, v70, v5

    if-lez v5, :cond_2

    .line 651
    move-wide/from16 v0, v70

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v36, v5, v9

    .line 653
    .restart local v36       #power:D
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v70

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 654
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v36

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    .line 655
    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v36

    aput-wide v9, v5, v6

    .line 656
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_17

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 657
    :cond_17
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    goto/16 :goto_3

    .line 587
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    iget v6, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 793
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .local v2, uSecNow:J
    move-wide v0, v2

    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addPhoneUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addScreenUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addWiFiUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addBluetoothUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addIdleUsage(J)V

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addRadioUsage(J)V

    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->load()V

    :cond_0
    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->processAppUsage()V

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->processMiscUsage()V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .local v0, hist:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;->setOrder(I)V

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;->setSelectable(Z)V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .local v7, sipper:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 432
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_1

    new-instance v6, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v6, v8, v9, v7}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings_ex/fuelgauge/BatterySipper;)V

    .local v6, pref:Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    div-double v2, v8, v10

    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->percent:D

    const v8, 0x7f080516

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setSummary(I)V

    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOrder(I)V

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_1

    .line 447
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 448
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    :cond_5
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private updateStatsPeriod(J)V
    .locals 4
    .parameter "duration"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, durationString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080b4b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 465
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    :cond_0
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->addPreferencesFromResource(I)V

    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 172
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 173
    const-string v0, "graph"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    .line 174
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 361
    const/4 v1, 0x2

    const v2, 0x7f080544

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    .local v0, refresh:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 366
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    if-nez v2, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    instance-of v0, p2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "title"

    iget-object v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconId"

    iget v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_1

    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    :cond_1
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->drainType:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->drainType:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    new-array v1, v9, [I

    const v0, 0x7f08052a

    aput v0, v1, v6

    .line 340
    new-array v0, v9, [D

    iget-wide v3, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, v0, v6

    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080516

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/16 v0, 0x9

    new-array v0, v0, [D

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v6

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v9

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v10

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v12

    const/4 v5, 0x4

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    const/4 v5, 0x5

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v11

    const/4 v3, 0x7

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v3

    const/16 v3, 0x8

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v3

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 273
    :cond_2
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v7, v5, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 282
    :cond_3
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :pswitch_1
    new-array v1, v10, [I

    fill-array-data v1, :array_1

    .line 291
    new-array v0, v10, [D

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v3, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v3, v0, v9

    goto/16 :goto_1

    .line 299
    :pswitch_2
    new-array v1, v11, [I

    fill-array-data v1, :array_2

    .line 307
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 318
    :pswitch_3
    new-array v1, v11, [I

    fill-array-data v1, :array_3

    .line 326
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 243
    :array_0
    .array-data 0x4
        0x20t 0x5t 0x8t 0x7ft
        0x21t 0x5t 0x8t 0x7ft
        0x22t 0x5t 0x8t 0x7ft
        0x23t 0x5t 0x8t 0x7ft
        0x24t 0x5t 0x8t 0x7ft
        0x26t 0x5t 0x8t 0x7ft
        0x27t 0x5t 0x8t 0x7ft
        0x28t 0x5t 0x8t 0x7ft
        0x29t 0x5t 0x8t 0x7ft
    .end array-data

    .line 287
    :array_1
    .array-data 0x4
        0x2at 0x5t 0x8t 0x7ft
        0x2bt 0x5t 0x8t 0x7ft
    .end array-data

    .line 299
    :array_2
    .array-data 0x4
        0x24t 0x5t 0x8t 0x7ft
        0x20t 0x5t 0x8t 0x7ft
        0x21t 0x5t 0x8t 0x7ft
        0x22t 0x5t 0x8t 0x7ft
        0x26t 0x5t 0x8t 0x7ft
        0x27t 0x5t 0x8t 0x7ft
    .end array-data

    .line 318
    :array_3
    .array-data 0x4
        0x2at 0x5t 0x8t 0x7ft
        0x20t 0x5t 0x8t 0x7ft
        0x21t 0x5t 0x8t 0x7ft
        0x22t 0x5t 0x8t 0x7ft
        0x26t 0x5t 0x8t 0x7ft
        0x27t 0x5t 0x8t 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .local v0, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .end local v0           #bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
