.class public final synthetic Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iput-boolean p2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->lambda$notifyRcsStatus$1$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Z)V

    return-void
.end method
