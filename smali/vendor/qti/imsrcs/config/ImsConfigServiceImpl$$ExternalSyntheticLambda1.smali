.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field public final synthetic f$1:Landroid/telephony/ims/RcsClientConfiguration;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/RcsClientConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->lambda$setRcsClientConfiguration$3$vendor-qti-imsrcs-config-ImsConfigServiceImpl(Landroid/telephony/ims/RcsClientConfiguration;)V

    return-void
.end method
