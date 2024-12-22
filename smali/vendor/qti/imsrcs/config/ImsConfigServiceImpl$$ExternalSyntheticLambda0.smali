.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field public final synthetic f$3:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    iput-object p4, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$3:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda0;->f$3:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->lambda$updateUceCapability$5$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    return-void
.end method
