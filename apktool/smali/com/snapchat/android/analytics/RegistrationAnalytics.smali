.class public final Lcom/snapchat/android/analytics/RegistrationAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/RegistrationAnalytics$1;,
        Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;
    }
.end annotation


# static fields
.field private static mIsRegisteringOnOptionalSteps:Z

.field private static final sInstance:Lcom/snapchat/android/analytics/RegistrationAnalytics;


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->sInstance:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 56
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/RegistrationAnalytics;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->sInstance:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;)V
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Lkr;

    invoke-direct {v0}, Lkr;-><init>()V

    .line 384
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkr;->verificationMethod:Ljava/lang/String;

    .line 385
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 387
    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$RegistrationAnalytics$PhoneVerificationMethod:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 389
    :pswitch_0
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_TEXT_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PHONE_CALL_VERIFY_INSTEAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CANCEL_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljw;)V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lkn;

    invoke-direct {v0}, Lkn;-><init>()V

    .line 248
    iput-object p0, v0, Lkn;->registrationError:Ljw;

    .line 249
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 251
    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$1;->$SwitchMap$com$snapchat$analytics$types$RegistrationErrorType:[I

    invoke-virtual {p0}, Ljw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 253
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->r()V

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q()V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->u()V

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->v()V

    goto :goto_0

    .line 265
    :pswitch_4
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->w()V

    goto :goto_0

    .line 268
    :pswitch_5
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->x()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 81
    sput-boolean p0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    .line 82
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lkg;

    invoke-direct {v0}, Lkg;-><init>()V

    .line 535
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lkg;->dialogAction:Ljava/lang/Boolean;

    .line 536
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 537
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    return v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_AUTO_FILL_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Lka;

    invoke-direct {v0}, Lka;-><init>()V

    .line 571
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lka;->dialogAction:Ljava/lang/Boolean;

    .line 572
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 573
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PHONE_NUMBER_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_COUNTRY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SEND_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_PHONE_NUMBER_TENTATIVE_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_VERIFY_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CLEAR_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CLEAR_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static n()V
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lkz;

    invoke-direct {v0}, Lkz;-><init>()V

    .line 560
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 561
    return-void
.end method
