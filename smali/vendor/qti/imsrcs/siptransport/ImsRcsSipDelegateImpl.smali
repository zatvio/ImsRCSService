.class public Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
.super Ljava/lang/Object;
.source "ImsRcsSipDelegateImpl.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;
    }
.end annotation


# static fields
.field private static INVALID_CONFIG_VERSION:I

.field private static INVALID_USERDATA:I


# instance fields
.field CallIdToFeatureTagMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final LOG_TAG:Ljava/lang/String;

.field private isDeviceConfigDataAvailable:Z

.field private isSipDelegateActive:Z

.field public isSipDelegateNeedsRestoration:Z

.field private isSipDelegatePendingDestroy:Z

.field private isSipDelegateRestoring:Z

.field private isUserConfigDataAvailable:Z

.field mConfigVersion:I

.field mCreateConnUserdata:I

.field private mCreateSipDelegateTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public mDelegateDestroyReason:I

.field mDeniedFtsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOutboundProxyName:Ljava/lang/String;

.field private mOutboundProxyPort:Ljava/lang/String;

.field mRegisteredFts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedFtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSipAssociatedUri:Ljava/lang/String;

.field mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

.field mSipDelegateExecutor:Ljava/util/concurrent/Executor;

.field mSipDelegateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;

.field mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

.field mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

.field mSipDelegateUserData:I

.field mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

.field mSipMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/SipMessage;",
            ">;"
        }
    .end annotation
.end field

.field public mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

.field public mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

.field mSupportedFts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->INVALID_USERDATA:I

    .line 70
    const/4 v0, -0x1

    sput v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->INVALID_CONFIG_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;Z)V
    .locals 3
    .param p1, "delegateStateCallback"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p2, "delegateMessageCallback"    # Landroid/telephony/ims/DelegateMessageCallback;
    .param p3, "sipTransportObj"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p4, "sipTransportWrapperObj"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
    .param p5, "aidlEnabled"    # Z

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->INVALID_USERDATA:I

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateConnUserdata:I

    .line 73
    sget v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->INVALID_CONFIG_VERSION:I

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRequestedFtList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDeniedFtsList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRegisteredFts:Landroid/util/ArraySet;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    .line 83
    const-string v0, "ImsRcsSipDelegateImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateExecutor:Ljava/util/concurrent/Executor;

    .line 85
    const/16 v1, 0xfa0

    iput v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateActive:Z

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    .line 91
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    .line 92
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    .line 93
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateRestoring:Z

    .line 94
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegatePendingDestroy:Z

    .line 95
    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateSipDelegateTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDelegateDestroyReason:I

    .line 99
    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    .line 671
    new-instance v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p0, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;

    .line 109
    const-string v1, "ImsRcsSipDelegateImpl ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    .line 111
    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    .line 112
    iput-object p3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 113
    iput-object p4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    .line 114
    if-eqz p5, :cond_0

    .line 115
    new-instance v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    invoke-direct {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    invoke-direct {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 118
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->setSipDelegateEventListener(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;)V

    .line 119
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    invoke-static {v0}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->regImpl:Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 66
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setSupportedFeatureTags()V

    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)Z
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 66
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateRestoring:Z

    return v0
.end method

.method static synthetic access$102(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateRestoring:Z

    return p1
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)I
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->convertHidlRatTypeToAospRegTech(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)Z
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 66
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateActive:Z

    return v0
.end method

.method static synthetic access$400(Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .param p1, "x1"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "x2"    # I

    .line 66
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->updateSessionStatus(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V

    return-void
.end method

.method private calculateBotVersionsFromFt(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1366
    .local p1, "ftList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1367
    .local v0, "botVersions":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1368
    .local v2, "ft":Ljava/lang/String;
    const-string v3, "botversion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1369
    const-string v3, "botversion=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1370
    .local v3, "tempVersions":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 1371
    .local v4, "v":Ljava/lang/String;
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1372
    const-string v5, "#="

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1373
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1375
    .end local v2    # "ft":Ljava/lang/String;
    .end local v3    # "tempVersions":[Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1377
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private checkRcsSessionStatus(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)V
    .locals 3
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;

    .line 1392
    const-string v0, "inside checkRcsSessionStatus"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isRequestMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isInviteMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    const-string v0, " msgParser is requestMEssage and is also invite message"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v1

    .line 1397
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getAcceptContactFt()Ljava/lang/String;

    move-result-object v2

    .line 1396
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1398
    :cond_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isResponseMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1399
    const-string v0, " msgParser is response message"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isInviteMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    const-string v0, "callid also matched"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    .line 1404
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isSessionStatusActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    const-string v0, " session active"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleActiveSessionStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1407
    :cond_1
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isSessionStatusHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    const-string v0, "session on hold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleHoldSessionStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1411
    :cond_2
    const-string v0, " session unknown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1413
    :cond_3
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->isByeMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    .line 1415
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleInactiveSessionStatus(Ljava/lang/String;I)V

    .line 1416
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->CallIdToFeatureTagMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1418
    :cond_4
    const-string v0, "looks like callid did not match"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_5
    :goto_0
    return-void
.end method

.method private convertAidlRatTypeToAospRegTech(I)I
    .locals 3
    .param p1, "ratType"    # I

    .line 1249
    const/4 v0, -0x1

    .line 1250
    .local v0, "aospRegistrationTech":I
    const/4 v1, 0x3

    const-string v2, "ImsRcsSipDelegateImpl"

    if-ne p1, v1, :cond_0

    .line 1251
    const-string v1, " rcsServiceRatType.RCS_RAT_LTE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/4 v0, 0x0

    goto :goto_0

    .line 1253
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1254
    const-string v1, " rcsServiceRatType.RCS_RAT_NR5G"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v0, 0x3

    goto :goto_0

    .line 1256
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1257
    const-string v1, " rcsServiceRatType.RCS_SERVICE_RAT_IWLAN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v0, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 1260
    const-string v1, " rcsServiceRatType.RCS_SERVICE_RAT_C_IWLAN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v0, 0x2

    goto :goto_0

    .line 1263
    :cond_3
    const-string v1, " none of case match; setting to REGISTRATION_TECH_NONE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :goto_0
    return v0
.end method

.method private convertHidlRatTypeToAospRegTech(I)I
    .locals 3
    .param p1, "ratType"    # I

    .line 1271
    const/4 v0, -0x1

    .line 1272
    .local v0, "aospRegistrationTech":I
    const/4 v1, 0x3

    const-string v2, "ImsRcsSipDelegateImpl"

    if-ne p1, v1, :cond_0

    .line 1273
    const-string v1, " rcsServiceRatType.RCS_RAT_LTE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v0, 0x0

    goto :goto_0

    .line 1275
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1276
    const-string v1, " rcsServiceRatType.RCS_RAT_NR5G"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v0, 0x3

    goto :goto_0

    .line 1278
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1279
    const-string v1, " rcsServiceRatType.RCS_SERVICE_RAT_IWLAN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v0, 0x1

    goto :goto_0

    .line 1281
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 1282
    const-string v1, " rcsServiceRatType.RCS_SERVICE_RAT_C_IWLAN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v0, 0x2

    goto :goto_0

    .line 1285
    :cond_3
    const-string v1, " none of case match; setting to REGISTRATION_TECH_NONE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :goto_0
    return v0
.end method

.method private fillImsConfig(Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;ILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 452
    const-string v0, "1"

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_1

    .line 661
    :sswitch_0
    const-string v0, "sip_config_p_last_access_network_info_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 665
    goto/16 :goto_1

    .line 655
    :sswitch_1
    const-string v0, "sip_config_uri_user_part_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 659
    goto/16 :goto_1

    .line 649
    :sswitch_2
    const-string v0, "sip_config_path_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 653
    goto/16 :goto_1

    .line 643
    :sswitch_3
    const-string v0, "sip_config_p_access_network_info_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 647
    goto/16 :goto_1

    .line 637
    :sswitch_4
    nop

    .line 640
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 637
    const-string v1, "sip_config_udp_max_payload_size_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 641
    goto/16 :goto_1

    .line 629
    :sswitch_5
    nop

    .line 632
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 629
    const-string v1, "sip_config_server_ipsec_old_client_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 633
    goto/16 :goto_1

    .line 623
    :sswitch_6
    const-string v0, "sip_config_security_verify_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 627
    goto/16 :goto_1

    .line 617
    :sswitch_7
    const-string v0, "sip_config_service_route_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 621
    goto/16 :goto_1

    .line 611
    :sswitch_8
    const-string v0, "sip_config_authentication_nonce_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 615
    goto/16 :goto_1

    .line 605
    :sswitch_9
    const-string v0, "sip_config_auhentication_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 609
    goto/16 :goto_1

    .line 599
    :sswitch_a
    nop

    .line 602
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 599
    const-string v1, "sip_config_server_ipsec_server_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 603
    goto/16 :goto_1

    .line 593
    :sswitch_b
    nop

    .line 596
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 593
    const-string v1, "sip_config_server_ipsec_client_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 597
    goto/16 :goto_1

    .line 586
    :sswitch_c
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setOutboundProxyPort(Ljava/lang/String;)V

    .line 587
    nop

    .line 590
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 587
    const-string v1, "sip_config_server_default_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 591
    goto/16 :goto_1

    .line 579
    :sswitch_d
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setOutboundProxyName(Ljava/lang/String;)V

    .line 580
    const-string v0, "sip_config_server_default_ipaddress_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 584
    goto/16 :goto_1

    .line 573
    :sswitch_e
    nop

    .line 576
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 573
    const-string v1, "sip_config_is_gruu_enabled_bool"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 577
    goto/16 :goto_1

    .line 567
    :sswitch_f
    nop

    .line 570
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 567
    const-string v1, "sip_config_is_keepalive_enabled_bool"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 571
    goto/16 :goto_1

    .line 561
    :sswitch_10
    nop

    .line 564
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 561
    const-string v1, "sip_config_is_compact_form_enabled_bool"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 565
    goto/16 :goto_1

    .line 555
    :sswitch_11
    nop

    .line 558
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 555
    const-string v1, "sip_config_is_ipsec_enabled_bool"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 559
    goto/16 :goto_1

    .line 549
    :sswitch_12
    nop

    .line 552
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 549
    const-string v1, "sip_config_is_nat_enabled_bool"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 553
    goto/16 :goto_1

    .line 543
    :sswitch_13
    nop

    .line 546
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 543
    const-string v1, "sip_config_ue_ipsec_old_client_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 547
    goto/16 :goto_1

    .line 536
    :sswitch_14
    invoke-virtual {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->updateImeiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "updatedValue":Ljava/lang/String;
    const-string v1, "sip_config_imei_string"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 541
    goto/16 :goto_1

    .line 521
    .end local v0    # "updatedValue":Ljava/lang/String;
    :sswitch_15
    const-string v1, ""

    .line 522
    .local v1, "ipTypeValue":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v1, "IPV4"

    goto :goto_0

    .line 526
    :cond_0
    const-string v0, "2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const-string v1, "IPV6"

    .line 530
    :cond_1
    :goto_0
    const-string v0, "sip_config_iptype_string"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 534
    goto :goto_1

    .line 515
    .end local v1    # "ipTypeValue":Ljava/lang/String;
    :sswitch_16
    const-string v0, "sip_config_ue_default_ipaddress_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 519
    goto :goto_1

    .line 509
    :sswitch_17
    const-string v0, "sip_config_ue_public_gruu_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 513
    goto :goto_1

    .line 503
    :sswitch_18
    const-string v0, "sip_config_home_domain_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 507
    goto :goto_1

    .line 497
    :sswitch_19
    const-string v0, "sip_config_ue_private_user_id_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 501
    goto :goto_1

    .line 491
    :sswitch_1a
    const-string v0, "sip_config_ue_public_user_id_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 495
    goto :goto_1

    .line 485
    :sswitch_1b
    nop

    .line 488
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    const-string v1, "sip_config_ue_public_port_with_nat_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 489
    goto :goto_1

    .line 479
    :sswitch_1c
    const-string v0, "sip_config_ue_public_ipaddress_with_nat_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 483
    goto :goto_1

    .line 471
    :sswitch_1d
    const-string v0, "ImsRcsSipDelegateImpl"

    const-string v1, " userConfigKeys.AssociatedURI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setSipAssociatedUri(Ljava/lang/String;)V

    .line 473
    const-string v0, "sip_config_p_associated_uri_header_string"

    invoke-virtual {p1, v0, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 477
    goto :goto_1

    .line 460
    :sswitch_1e
    nop

    .line 463
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    const-string v1, "sip_config_ue_ipsec_server_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 465
    nop

    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 465
    const-string v1, "sip_config_ue_default_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 469
    goto :goto_1

    .line 454
    :sswitch_1f
    nop

    .line 457
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 454
    const-string v1, "sip_config_ue_ipsec_client_port_int"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 458
    nop

    .line 669
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1f
        0x3ea -> :sswitch_1e
        0x3eb -> :sswitch_1d
        0x3ec -> :sswitch_1c
        0x3ed -> :sswitch_1b
        0x3ee -> :sswitch_1a
        0x3f0 -> :sswitch_19
        0x3f1 -> :sswitch_18
        0x3f2 -> :sswitch_17
        0x3f3 -> :sswitch_16
        0x3f4 -> :sswitch_15
        0x3f5 -> :sswitch_14
        0x3f6 -> :sswitch_13
        0x7d1 -> :sswitch_12
        0x7d2 -> :sswitch_11
        0x7d3 -> :sswitch_10
        0x7d4 -> :sswitch_f
        0x7d5 -> :sswitch_e
        0x7d6 -> :sswitch_d
        0x7d7 -> :sswitch_c
        0x7d8 -> :sswitch_b
        0x7d9 -> :sswitch_a
        0x7da -> :sswitch_9
        0x7db -> :sswitch_8
        0x7dc -> :sswitch_7
        0x7dd -> :sswitch_6
        0x7de -> :sswitch_5
        0x7df -> :sswitch_4
        0x7e0 -> :sswitch_3
        0x7e1 -> :sswitch_2
        0x7e2 -> :sswitch_1
        0x7e3 -> :sswitch_0
    .end sparse-switch
.end method

.method private getDeniedReason(I)I
    .locals 1
    .param p1, "deniedReason"    # I

    .line 1241
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1242
    const/4 v0, 0x4

    return v0

    .line 1244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setOutboundProxyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mOutboundProxyName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private setOutboundProxyPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mOutboundProxyPort:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private setSipAssociatedUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "sipAssociatedUri"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    const-string v1, "ImsRcsSipDelegateImpl"

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSipAssociatedUri changed to === "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "from mSipAssociatedUri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSipAssociatedUri to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    .line 177
    :cond_1
    :goto_0
    return-void
.end method

.method private setSupportedFeatureTags()V
    .locals 14

    .line 1292
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    .line 1295
    .local v0, "ChatbotFt":Ljava/lang/String;
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    .line 1299
    .local v1, "ChatbotSaFt":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1300
    .local v2, "requestedBotVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getRequestedFeatureTags()Ljava/util/ArrayList;

    move-result-object v3

    .line 1301
    .local v3, "requestedTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getDeniedFtsList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1302
    .local v4, "deniedTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "+g.gsma.rcs.botversion=\""

    .line 1303
    .local v5, "botVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1304
    .local v6, "botVersionStandardSize":I
    const-string v7, ": setSupportedFeatureTags called"

    const-string v8, "ImsRcsSipDelegateImpl"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1310
    invoke-direct {p0, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->calculateBotVersionsFromFt(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    .line 1312
    .local v7, "deniedBotVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1313
    const-string v9, ": setSupportedFeatureTags - deniedBotVersions found in response"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->calculateBotVersionsFromFt(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 1317
    :cond_0
    if-eqz v2, :cond_7

    .line 1319
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1321
    .local v9, "mSupportedBotVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1323
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1324
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 1325
    if-eqz v10, :cond_1

    .line 1326
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1327
    :cond_1
    nop

    .line 1328
    const-string v11, "#="

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1329
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1330
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_2

    .line 1331
    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1332
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ": setSupportedFeatureTags - botVersionString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1337
    .end local v10    # "i":I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ": setSupportedFeatureTags - full botVersionString: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_7

    .line 1342
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1344
    .local v10, "tempFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1346
    .local v12, "ft":Ljava/lang/String;
    const-string v13, "botversion"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1347
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1348
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1349
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1353
    .end local v12    # "ft":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 1357
    .end local v9    # "mSupportedBotVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tempFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1358
    .local v10, "ftString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ": setSupportedFeatureTags - supportedFts: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .end local v10    # "ftString":Ljava/lang/String;
    goto :goto_2

    .line 1361
    :cond_8
    invoke-direct {p0, v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setSupportedFtList(Ljava/util/ArrayList;)V

    .line 1362
    return-void
.end method

.method private setSupportedFtList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "ftList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ":setSupportedFtList"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "ft":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":setSupportedFtList: added fts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v2    # "ft":Ljava/lang/String;
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method private updateSessionStatus(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 2
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I

    .line 1382
    const-string v0, ": updateSessionStatus"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getSdpContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    const-string v0, ": updateSessionStatus - msg has sdp body"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleUpdateSession(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V

    .line 1387
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->checkRcsSessionStatus(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)V

    .line 1389
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCreateSipDelegateTimer()V
    .locals 2

    .line 256
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateSipDelegateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "ImsRcsSipDelegateImpl"

    const-string v1, ": cancelCreateSipDelegateTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateSipDelegateTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 260
    :cond_0
    return-void
.end method

.method public cleanupSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 264
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    .line 265
    const-string v0, "ImsRcsSipDelegateImpl"

    const-string v1, ": closeDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    invoke-virtual {v0, p1, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleCloseTransaction(Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public getCreateConnectionUserData()I
    .locals 1

    .line 133
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateConnUserdata:I

    return v0
.end method

.method public getDeniedFtsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDeniedFtsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsDelegateNeedstoRestore()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    return v0
.end method

.method public getIsDelegatePendingDestroy()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegatePendingDestroy:Z

    return v0
.end method

.method public getIsDelegateRestoring()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateRestoring:Z

    return v0
.end method

.method public getOutboundProxyName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mOutboundProxyName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutboundProxyPort()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mOutboundProxyPort:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedFeatureTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRequestedFtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const-string v0, "ImsRcsSipDelegateImpl"

    const-string v1, "getRequestedFeatureTags RequestedFts exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRequestedFtList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestedFeatureTagsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRequestedFtList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSipAssociatedUri()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipAssociatedUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFtList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isConnectionHandleValid()Z
    .locals 4

    .line 249
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->getConnectionHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCreateSipDelegateRequestPending()Z
    .locals 3

    .line 242
    iget-boolean v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateActive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateConnUserdata:I

    sget v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->INVALID_USERDATA:I

    if-ne v0, v2, :cond_0

    .line 243
    return v1

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 275
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 280
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 8
    .param p1, "configData"    # Lvendor/qti/ims/rcssip/V1_0/configData;

    .line 321
    const-string v0, "onConfigurationChange called"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    add-int/2addr v3, v2

    iput v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    invoke-direct {v0, v3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;-><init>(I)V

    .local v0, "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    goto :goto_0

    .line 327
    .end local v0    # "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    :cond_0
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-direct {v0, v3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;-><init>(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 328
    .restart local v0    # "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    add-int/2addr v3, v2

    iput v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    .line 332
    :goto_0
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->getUserAgentValue()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "userAgent":Ljava/lang/String;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 334
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->getUserAgentValue()Ljava/lang/String;

    move-result-object v4

    .line 333
    const-string v5, "sip_config_sip_user_agent_header_string"

    invoke-virtual {v0, v5, v4}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 337
    const-string v4, "sip_config_protocol_type_string"

    const-string v5, "TCP"

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 340
    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->userConfigData:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->userConfigData:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 343
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    .line 344
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->userConfigData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 345
    iget-object v5, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->userConfigData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    .line 346
    .local v5, "var":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    iget v6, v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    iget-object v7, v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v7}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->fillImsConfig(Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;ILjava/lang/String;)V

    .line 344
    .end local v5    # "var":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_1
    goto :goto_2

    .line 349
    :cond_2
    const-string v4, "onConfigurationChange:no userConfigKeys in this iter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_2
    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->deviceConfigData:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->deviceConfigData:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 355
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->deviceConfigData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 357
    iget-object v4, p1, Lvendor/qti/ims/rcssip/V1_0/configData;->deviceConfigData:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    .line 359
    .local v4, "var":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    iget v5, v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    iget-object v6, v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->fillImsConfig(Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;ILjava/lang/String;)V

    .line 356
    .end local v4    # "var":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 362
    :cond_4
    const-string v2, "onConfigurationChange:no deviceConfigKeys in this iter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_4
    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateImsConfiguration;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config version before posting to FW: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    if-eqz v2, :cond_5

    .line 370
    const-string v2, "Sending onImsConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-interface {v1, v2}, Landroid/telephony/ims/DelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 373
    :cond_5
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 8
    .param p1, "configData"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    .line 376
    const-string v0, "AIDL: onConfigurationChange called"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    add-int/2addr v3, v2

    iput v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    invoke-direct {v0, v3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;-><init>(I)V

    .local v0, "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    goto :goto_0

    .line 382
    .end local v0    # "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    :cond_0
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-direct {v0, v3}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;-><init>(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 383
    .restart local v0    # "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    add-int/2addr v3, v2

    iput v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    .line 387
    :goto_0
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->getUserAgentValue()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "userAgent":Ljava/lang/String;
    iget-object v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 389
    invoke-virtual {v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->getUserAgentValue()Ljava/lang/String;

    move-result-object v4

    .line 388
    const-string v5, "sip_config_sip_user_agent_header_string"

    invoke-virtual {v0, v5, v4}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 392
    const-string v4, "sip_config_protocol_type_string"

    const-string v5, "TCP"

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 395
    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->userConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->userConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 398
    const-string v4, "onConfigurationChange:userConfigKeys present"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    .line 400
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->userConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 401
    iget-object v5, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->userConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    aget-object v5, v5, v4

    .line 402
    .local v5, "var":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    iget v6, v5, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    iget-object v7, v5, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v7}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->fillImsConfig(Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;ILjava/lang/String;)V

    .line 400
    .end local v5    # "var":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_1
    goto :goto_2

    .line 405
    :cond_2
    const-string v4, "onConfigurationChange:no userConfigKeys in this iter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_2
    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->deviceConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->deviceConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 411
    const-string v4, "onConfigurationChange:deviceConfigKeys present"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->deviceConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 414
    iget-object v4, p1, Lvendor/qti/ims/rcssipaidlservice/ConfigData;->deviceConfigData:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    aget-object v4, v4, v2

    .line 416
    .local v4, "var":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    iget v5, v4, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    iget-object v6, v4, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->fillImsConfig(Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;ILjava/lang/String;)V

    .line 413
    .end local v4    # "var":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 419
    :cond_4
    const-string v2, "onConfigurationChange:no deviceConfigKeys in this iter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_4
    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateImsConfiguration;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config version before posting to FW: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    if-eqz v2, :cond_5

    .line 427
    const-string v2, "Sending onImsConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-interface {v1, v2}, Landroid/telephony/ims/DelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 430
    :cond_5
    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 4
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 284
    const-string v0, "sendMessage API called"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    int-to-long v2, v0

    cmp-long v0, v2, p2

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "sendMessage::Invoking onMessageSendFailure reason: stale config"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateMsgCb:Landroid/telephony/ims/DelegateMessageCallback;

    .line 289
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    .line 288
    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    :cond_0
    const-string v0, "sendMessage::config version matched"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    .line 295
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipMessageMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;

    invoke-direct {v0, p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;-><init>(Landroid/telephony/ims/SipMessage;)V

    .line 299
    .local v0, "msgParser":Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    iget v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateUserData:I

    invoke-virtual {v2, p1, v0, v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->handleSendMessage(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V

    .line 300
    invoke-direct {p0, v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->updateSessionStatus(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V

    .line 302
    .end local v0    # "msgParser":Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    :goto_0
    return-void
.end method

.method public setCreateConnectionUserData(I)V
    .locals 0
    .param p1, "userData"    # I

    .line 129
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateConnUserdata:I

    .line 130
    return-void
.end method

.method public setCreateSipDelegateTimer(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 238
    .local p1, "scheduledTimer":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mCreateSipDelegateTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 239
    return-void
.end method

.method public setDelegateWrapper(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)V
    .locals 1
    .param p1, "delegateWrapper"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 124
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;

    .line 125
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateListener:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl$SipDelegateListener;

    invoke-virtual {p1, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;->setSipDelegateEventListener(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;)V

    .line 126
    return-void
.end method

.method public setDeniedFtsList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDeniedFtsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public setIsDelegateActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 209
    iput-boolean p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateActive:Z

    .line 210
    return-void
.end method

.method public setIsDelegateNeedstoRestore(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 213
    iput-boolean p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    .line 214
    return-void
.end method

.method public setIsDelegatePendingDestroy(ZI)V
    .locals 0
    .param p1, "status"    # Z
    .param p2, "reason"    # I

    .line 229
    iput-boolean p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegatePendingDestroy:Z

    .line 230
    iput p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mDelegateDestroyReason:I

    .line 231
    return-void
.end method

.method public setIsDelegateRestoring(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 221
    iput-boolean p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateRestoring:Z

    .line 222
    return-void
.end method

.method public setRequestedFeatureTagsList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mRequestedFtList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    return-void
.end method

.method updateImeiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "imeiStringVal"    # Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 433
    .local v0, "imeiStringLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "newString":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateImeiString: string length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 435
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    const-string v3, "ImsRcsSipDelegateImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v2, 0x12

    if-gt v0, v2, :cond_1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 440
    const/16 v3, 0x8

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 437
    :cond_1
    :goto_0
    const-string v2, " updateImeiString: improper string length"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateUserAgentToFw(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgentValue"    # Ljava/lang/String;

    .line 305
    const-string v0, "updateUserAgentToFw called"

    const-string v1, "ImsRcsSipDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mConfigVersion:I

    .line 310
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-direct {v0, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;-><init>(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 311
    .local v0, "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipTransportServiceInstance:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 312
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->getUserAgentValue()Ljava/lang/String;

    move-result-object v2

    .line 311
    const-string v3, "sip_config_sip_user_agent_header_string"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateImsConfiguration;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 314
    const-string v2, "Sending onImsConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-boolean v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isUserConfigDataAvailable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isDeviceConfigDataAvailable:Z

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateConfig:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-interface {v1, v2}, Landroid/telephony/ims/DelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    .line 319
    .end local v0    # "c":Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    :cond_0
    return-void
.end method
