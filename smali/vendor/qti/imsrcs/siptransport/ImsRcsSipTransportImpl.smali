.class public Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "ImsRcsSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;,
        Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;
    }
.end annotation


# static fields
.field private static RCS_CAP_STATUS_DISABLED:I

.field private static RCS_CAP_STATUS_ENABLED:I

.field private static RCS_CAP_STATUS_UNKNOWN:I

.field private static SERVICE_STATUS_AVAILABLE:I

.field private static SERVICE_STATUS_UNAVAILABLE:I

.field private static SERVICE_STATUS_UNKNOWN:I


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

.field mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field private mCreateSipDelegateTimerValue:I

.field mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field private mRcsCapabilityStatus:I

.field private mServiceStatus:I

.field mSipDelegateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/stub/SipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mSipTransportExecutor:Ljava/util/concurrent/Executor;

.field mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

.field mSlotId:I

.field private mUserAgentValue:Ljava/lang/String;

.field m_isSipTransportEnabled:Z

.field rcsConfigUpdateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;

.field sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, -0x1

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_UNKNOWN:I

    .line 56
    const/4 v0, 0x0

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_DISABLED:I

    .line 57
    const/4 v0, 0x1

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_ENABLED:I

    .line 58
    const/4 v0, 0x2

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_UNKNOWN:I

    .line 59
    const/4 v0, 0x3

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_AVAILABLE:I

    .line 60
    const/4 v0, 0x4

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_UNAVAILABLE:I

    return-void
.end method

.method public constructor <init>(ILvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "config"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 78
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->m_isSipTransportEnabled:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    .line 53
    const-string v0, "ImsRcsSipTransportImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->LOG_TAG:Ljava/lang/String;

    .line 62
    sget v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_UNKNOWN:I

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mServiceStatus:I

    .line 63
    sget v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_UNKNOWN:I

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    .line 65
    const/16 v1, 0xa

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mCreateSipDelegateTimerValue:I

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mUserAgentValue:Ljava/lang/String;

    .line 79
    const-string v1, ":ctor ImsRcsSipTransportImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    .line 81
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 82
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 83
    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 84
    new-instance v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    .line 86
    new-instance v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->rcsConfigUpdateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;

    .line 87
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->registerForSipTransportConfigUpdate(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    .line 90
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    .line 97
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p1, "x1"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->generateFeatureTagStateArray(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_AVAILABLE:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_UNKNOWN:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_UNKNOWN:I

    return v0
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)I
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 41
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    return v0
.end method

.method static synthetic access$202(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_ENABLED:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_DISABLED:I

    return v0
.end method

.method static synthetic access$500(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 41
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->handlePendingCreateConnections()V

    return-void
.end method

.method static synthetic access$600(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 41
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mUserAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->setUserAgentValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mServiceStatus:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .line 41
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_UNAVAILABLE:I

    return v0
.end method

.method private createConnectionForDelegate(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V
    .locals 6
    .param p1, "delegate"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 219
    const-string v0, "ImsRcsSipTransportImpl"

    const-string v1, ": createConnectionForDelegate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->cancelCreateSipDelegateTimer()V

    .line 221
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isCreateSipDelegateRequestPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getRequestedFeatureTagsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "featureTagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "ftstring":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v3    # "ftstring":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 228
    invoke-virtual {v2, v3, v4}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I

    move-result v2

    invoke-virtual {p1, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setCreateConnectionUserData(I)V

    .line 232
    .end local v0    # "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "featureTagsString":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private generateFeatureTagStateArray(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)Landroid/util/ArraySet;
    .locals 5
    .param p1, "sipDelegateObj"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p2, "ftStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;",
            "I)",
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getRequestedFeatureTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 275
    .local v1, "featureTagStateArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, "ftstring":Ljava/lang/String;
    new-instance v4, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v4, v3, p2}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 277
    .local v4, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v3    # "ftstring":Ljava/lang/String;
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 279
    :cond_0
    return-object v1
.end method

.method private handlePendingCreateConnections()V
    .locals 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": handlePendingCreateConnections mRcsCapabilityStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServiceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mServiceStatus:I

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    sget v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_ENABLED:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mServiceStatus:I

    sget v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_AVAILABLE:I

    if-ne v0, v2, :cond_1

    .line 254
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/SipDelegate;

    .line 255
    .local v2, "delegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v3, v2

    check-cast v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 257
    .local v3, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    iget-boolean v4, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    if-eqz v4, :cond_0

    .line 258
    const-string v4, ":handlePendingCreateConnections- isSipDelegateNeedsRestoration true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegateRestoring(Z)V

    .line 261
    const/4 v4, 0x0

    iput-boolean v4, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    .line 262
    invoke-direct {p0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->restoreConnectionForDelegate(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V

    goto :goto_1

    .line 264
    :cond_0
    invoke-direct {p0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->createConnectionForDelegate(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V

    .line 266
    .end local v2    # "delegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v3    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    :goto_1
    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method private restoreConnectionForDelegate(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V
    .locals 7
    .param p1, "delegate"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 235
    const-string v0, ": restoreConnectionForDelegate called"

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getRequestedFeatureTagsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "featureTagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .local v4, "ftstring":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v4    # "ftstring":Ljava/lang/String;
    goto :goto_0

    .line 241
    :cond_0
    const-string v3, ": restoreConnectionForDelegate before calling createConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 242
    invoke-virtual {v1, v3, v4}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I

    move-result v1

    invoke-virtual {p1, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setCreateConnectionUserData(I)V

    .line 245
    return-void
.end method

.method private setUserAgentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgentValue"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mUserAgentValue:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "delegateRequest"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "delegateStateCallback"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "delegateMessageCallback"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 105
    const-string v0, ": createSipDelegate"

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 109
    :cond_0
    const-string v0, "null delegateRequest | delegateStateCallback | delegateMessageCallback.. This should never happen"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    const-string v0, ": createSipDelegate: Before calling Config API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    if-nez v0, :cond_3

    .line 117
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    invoke-virtual {v0, v2, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;

    invoke-virtual {v0, v2, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getSipTransportService(ILvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    goto :goto_0

    .line 126
    :cond_3
    new-instance v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v6, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    sget-boolean v2, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;-><init>(Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;Z)V

    .line 131
    .local v0, "delegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    .local v4, "ft":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": createSipDelegate : requestedFts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    .end local v4    # "ft":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setRequestedFeatureTagsList(Ljava/util/ArrayList;)V

    .line 140
    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mRcsCapabilityStatus:I

    sget v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->RCS_CAP_STATUS_ENABLED:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mServiceStatus:I

    sget v4, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->SERVICE_STATUS_AVAILABLE:I

    if-ne v3, v4, :cond_6

    .line 142
    invoke-direct {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->createConnectionForDelegate(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V

    goto :goto_3

    .line 145
    :cond_6
    const-string v3, ": createSipDelegate : wait for rcs status callback or onServiceStatus to trigger  createConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;

    invoke-direct {v3, p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V

    iget v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mCreateSipDelegateTimerValue:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    invoke-interface {v1, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 168
    .local v1, "scheduleFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setCreateSipDelegateTimer(Ljava/util/concurrent/ScheduledFuture;)V

    .line 171
    .end local v1    # "scheduleFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_3
    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 4
    .param p1, "sipDelegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 175
    const-string v0, ": destroySipDelegate called"

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    move-object v0, p1

    check-cast v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 181
    .local v0, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getIsDelegateNeedstoRestore()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 182
    const-string v2, ":destroySipDelegate -Abort connection restoration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegateNeedstoRestore(Z)V

    .line 184
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getIsDelegateRestoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string v2, ":destroySipDelegate - wait till connection completes restoration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegatePendingDestroy(ZI)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegateActive(Z)V

    .line 198
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isConnectionHandleValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    iget-object v3, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    invoke-virtual {v2, p2, v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->closeConnection(ILvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I

    goto :goto_0

    .line 202
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipTransportExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    .end local v0    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    :cond_3
    :goto_0
    const-string v0, ": destroySipDelegate end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mUserAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$destroySipDelegate$0$vendor-qti-imsrcs-siptransport-ImsRcsSipTransportImpl(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)V
    .locals 2
    .param p1, "sipDelegateObj"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p2, "reason"    # I

    .line 186
    const-string v0, "ImsRcsSipTransportImpl"

    const-string v1, ": posting OnDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 188
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method synthetic lambda$destroySipDelegate$1$vendor-qti-imsrcs-siptransport-ImsRcsSipTransportImpl(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)V
    .locals 2
    .param p1, "sipDelegateObj"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p2, "reason"    # I

    .line 204
    const-string v0, "ImsRcsSipTransportImpl"

    const-string v1, ": posting OnDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 206
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method
