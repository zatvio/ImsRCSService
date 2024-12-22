.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .param p2, "x1"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr$1;

    .line 575
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr$FactoryDeathRecipient;-><init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1
    .param p1, "l"    # J

    .line 578
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$100(Lvendor/qti/imsrcs/ImsRcsServiceMgr;)V

    .line 579
    return-void
.end method
