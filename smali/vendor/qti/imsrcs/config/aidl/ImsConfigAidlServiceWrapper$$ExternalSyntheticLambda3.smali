.class public final synthetic Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

.field public final synthetic f$1:Lvendor/qti/ims/configaidlservice/RcsStatus;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/ims/configaidlservice/RcsStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;->f$1:Lvendor/qti/ims/configaidlservice/RcsStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda3;->f$1:Lvendor/qti/ims/configaidlservice/RcsStatus;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->lambda$getRcsStatus$4$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Lvendor/qti/ims/configaidlservice/RcsStatus;)V

    return-void
.end method
