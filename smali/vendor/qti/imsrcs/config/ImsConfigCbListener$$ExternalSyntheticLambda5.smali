.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

.field public final synthetic f$1:Lvendor/qti/ims/configaidlservice/AutoConfigResponse;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigCbListener;Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;->f$1:Lvendor/qti/ims/configaidlservice/AutoConfigResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigCbListener$$ExternalSyntheticLambda5;->f$1:Lvendor/qti/ims/configaidlservice/AutoConfigResponse;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->lambda$handleAutoConfigErrorCb$8$vendor-qti-imsrcs-config-ImsConfigCbListener(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V

    return-void
.end method
