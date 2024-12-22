.class Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRcsAidlServiceMgr.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;->this$0:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;
    .param p2, "x1"    # Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$1;

    .line 117
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 120
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factoryaidlservice/IImsFactory;

    invoke-interface {v0}, Lvendor/qti/ims/factoryaidlservice/IImsFactory;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->access$100(Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;)V

    .line 122
    return-void
.end method
