.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$2:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda2;->f$2:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->lambda$registerForSipTransportConfigUpdate$6$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V

    return-void
.end method
