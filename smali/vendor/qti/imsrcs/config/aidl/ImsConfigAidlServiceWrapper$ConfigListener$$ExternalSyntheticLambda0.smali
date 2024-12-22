.class public final synthetic Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

.field public final synthetic f$1:Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;->f$1:Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;->f$1:Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->lambda$onUceStatusUpdate$0$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper$ConfigListener(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V

    return-void
.end method
