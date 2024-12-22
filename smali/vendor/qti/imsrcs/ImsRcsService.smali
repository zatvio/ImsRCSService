.class public Lvendor/qti/imsrcs/ImsRcsService;
.super Landroid/telephony/ims/ImsService;
.source "ImsRcsService.java"


# static fields
.field private static final INVALID_SLOT_ID:I = -0x1

.field public static final LOG_TAG:Ljava/lang/String; = "ImsRcsService"

.field public static MAX_SLOTS:I = 0x0

.field public static final RCS_SERVICE_DISABLED:I = 0x0

.field public static final RCS_SERVICE_ENABLED:I = 0x1

.field private static final SINGLE_REG_PROPERTY_STRING:Ljava/lang/String; = "persist.vendor.rcs.singlereg.feature"

.field private static final UNINITIALIZED_VALUE:I = -0x1

.field private static mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field private static mImsRcsAidlServiceMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

.field private static mImsRcsFeatureImpl:[Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

.field private static mImsRcsRegistrationImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

.field private static mImsRcsServiceMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field private static mImsRcsSipTransportImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;


# instance fields
.field private mNumPhonesCache:I

.field private mRcsSingleRegEnable:I

.field mServiceExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const/4 v0, -0x1

    sput v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mNumPhonesCache:I

    .line 71
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mServiceExecutor:Ljava/util/concurrent/Executor;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    return-void
.end method

.method private getConfigImplInternal(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 138
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v1, 0x0

    const-string v2, "ImsRcsService"

    if-nez v0, :cond_0

    .line 139
    const-string v0, "getConfigImplInternal :: SingleImsReg disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v1

    .line 141
    :cond_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 142
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    aget-object v0, v0, p1

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigImplInternal :: invalid slotId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v1
.end method

.method public static getImsConfigService()[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    .locals 1

    .line 163
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    return-object v0
.end method

.method public static getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    .locals 1
    .param p0, "slotId"    # I

    .line 167
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsRegistrationImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private getNumSlots()I
    .locals 2

    .line 83
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/ImsRcsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mNumPhonesCache:I

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRcsService getNumSlots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsService;->mNumPhonesCache:I

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mNumPhonesCache:I

    return v0
.end method

.method private getRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 4
    .param p1, "slotId"    # I

    .line 121
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v1, 0x0

    const-string v2, "ImsRcsService"

    if-nez v0, :cond_0

    .line 122
    const-string v0, "Single Reg Property disabled so return null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v1

    .line 124
    :cond_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 125
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsFeatureImpl:[Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 126
    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    sget-object v3, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    aget-object v3, v3, p1

    invoke-direct {v1, p1, v3}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;-><init>(ILvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    aput-object v1, v0, p1

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsFeature :: slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsFeatureImpl:[Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    aget-object v0, v0, p1

    return-object v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsFeature :: Invalid slotId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v1
.end method

.method private getRegistrationImplInternal(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 149
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v1, 0x0

    const-string v2, "ImsRcsService"

    if-nez v0, :cond_0

    .line 150
    const-string v0, "getRegistration :: SingleImsReg disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v1

    .line 152
    :cond_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 153
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsRegistrationImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    invoke-direct {v1, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;-><init>(I)V

    aput-object v1, v0, p1

    .line 156
    :cond_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsRegistrationImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    aget-object v0, v0, p1

    return-object v0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegistrationImplInternal :: invalid slotId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v1
.end method

.method private setup()V
    .locals 4

    .line 93
    const-string v0, "persist.vendor.rcs.singlereg.feature"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single Reg Property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v0

    .line 97
    .local v0, "numSlots":I
    sput v0, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRcsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v2, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    if-nez v2, :cond_0

    .line 101
    const-string v2, "SingleImsReg not enabled, so return without initializing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v1

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsAidlServiceMgr:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 106
    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->initialize()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v1

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsServiceMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 108
    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->Initialize()Z

    .line 110
    :cond_1
    new-array v1, v0, [Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 112
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    new-instance v3, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-direct {v3, v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    sget v1, Lvendor/qti/imsrcs/ImsRcsService;->MAX_SLOTS:I

    new-array v2, v1, [Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    sput-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsFeatureImpl:[Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 116
    new-array v2, v1, [Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    sput-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsRegistrationImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    .line 117
    new-array v1, v1, [Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsSipTransportImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 118
    return-void
.end method


# virtual methods
.method public createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRcsFeature :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subsId"    # I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRcsFeatureForSubscription :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getConfigImplInternal(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subsId"    # I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigForSubscription :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getConfigImplInternal(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 179
    const-string v0, "ImsRcsService"

    const-string v1, "getExecutor======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mServiceExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .locals 3

    .line 184
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v1, 0x1

    const-string v2, "ImsRcsService"

    if-ne v0, v1, :cond_0

    .line 185
    const-string v0, "ImsRcsService getImsServiceCapabilities"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v0, 0x2

    return-wide v0

    .line 188
    :cond_0
    const-string v0, "ImsRcsService getImsServiceCapabilities returning null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getRegistrationImplInternal(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subsId"    # I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistrationForSubscription :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsService;->getRegistrationImplInternal(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSipTransport :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget v0, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 303
    const-string v0, "getSipTransport :: SingleImsReg disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v2

    .line 305
    :cond_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 306
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsSipTransportImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 307
    new-instance v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    sget-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    aget-object v2, v2, p1

    invoke-direct {v1, p1, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;-><init>(ILvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V

    aput-object v1, v0, p1

    .line 309
    :cond_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsSipTransportImpl:[Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    aget-object v0, v0, p1

    return-object v0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSipTransport :: Invalid slotId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-object v2
.end method

.method public onCreate()V
    .locals 2

    .line 172
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 173
    const-string v0, "ImsRcsService"

    const-string v1, "ImsRcsService created!======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->setup()V

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 342
    const-string v0, "ImsRcsService"

    const-string v1, "Ims Rcs Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsServiceMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->dispose()V

    .line 345
    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsRcsServiceMgr:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 348
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 349
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    if-eqz v2, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->dispose()V

    .line 351
    sget-object v2, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    aput-object v1, v2, v0

    .line 348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_2
    sput-object v1, Lvendor/qti/imsrcs/ImsRcsService;->mImsConfigSvc:[Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 355
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 356
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 206
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 207
    .local v0, "features":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsService;->mRcsSingleRegEnable:I

    const/4 v2, 0x1

    const-string v3, "ImsRcsService"

    if-ne v1, v2, :cond_1

    .line 208
    const-string v1, "ImsRcsService  querySupportedImsFeatures FEATURE_RCS"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lvendor/qti/imsrcs/ImsRcsService;->getNumSlots()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 210
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 213
    :cond_1
    const-string v1, "singleImsReg prop is disabled so not adding features"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 2

    .line 231
    const-string v0, "ImsRcsService"

    const-string v1, "readyForFeatureCreation :: No-op"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method
