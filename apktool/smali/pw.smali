.class public Lpw;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw$b;,
        Lpw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lbig;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IO_EXCEPTION:Ljava/lang/String; = "ie"

.field static final MAX_RETRIES:I = 0x3

.field protected static final PATH:Ljava/lang/String; = "/loq/login"

.field private static final ROOT_FLAG:I = 0x1

.field public static final SC_LOGIN_FAILED_CANNOT_FIND_ACCOUNT_CODE:I = -0x65

.field public static final SC_LOGIN_FAILED_INVALID_PASSWORD_CODE:I = -0x64

.field public static final SC_LOGIN_FAILED_UNKNOWN_ERROR:I = 0x7ffffffa

.field private static final TAG:Ljava/lang/String; = "LoginTask"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mDeviceTokenManager:Laya;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mGoogleAuthManager:Llx;

.field private final mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private final mHandler:Landroid/os/Handler;

.field private final mLoginCallback:Lpw$a;

.field protected final mLoginName:Ljava/lang/String;

.field private mNumRetries:I

.field private final mPassword:Ljava/lang/String;

.field private mPreAuthToken:Ljava/lang/String;

.field private mRetryMillis:J

.field private final mRetryUtil:Laug;

.field private final mRootDetector:Lbgn;

.field private final mScreenParameterProvider:Lov;

.field private final mSlightlySecurePreferences:Layg;

.field private final mUserPrefs:Lajx;

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lpw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lpw;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lpw$a;Ljava/lang/String;Laya;Lov;Lcom/google/android/gms/gcm/GoogleCloudMessaging;Llx;Laug;Ljava/util/concurrent/ExecutorService;Lbgn;Landroid/os/Handler;Layg;Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lajx;)V
    .locals 4
    .param p3    # Lpw$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpw$a;",
            "Ljava/lang/String;",
            "Laya;",
            "Lov;",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            "Llx;",
            "Laug;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lbgn;",
            "Landroid/os/Handler;",
            "Layg;",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lajx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lth;-><init>()V

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lpw;->mNumRetries:I

    .line 92
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lpw;->mRetryMillis:J

    .line 144
    iput-object p1, p0, Lpw;->mLoginName:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lpw;->mPassword:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lpw;->mLoginCallback:Lpw$a;

    .line 147
    iput-object p4, p0, Lpw;->mPreAuthToken:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lpw;->mDeviceTokenManager:Laya;

    .line 149
    iput-object p6, p0, Lpw;->mScreenParameterProvider:Lov;

    .line 150
    iput-object p7, p0, Lpw;->mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 151
    iput-object p8, p0, Lpw;->mGoogleAuthManager:Llx;

    .line 152
    iput-object p9, p0, Lpw;->mRetryUtil:Laug;

    .line 153
    iput-object p10, p0, Lpw;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 154
    iput-object p11, p0, Lpw;->mRootDetector:Lbgn;

    .line 155
    move-object/from16 v0, p12

    iput-object v0, p0, Lpw;->mHandler:Landroid/os/Handler;

    .line 156
    move-object/from16 v0, p13

    iput-object v0, p0, Lpw;->mSlightlySecurePreferences:Layg;

    .line 157
    move-object/from16 v0, p14

    iput-object v0, p0, Lpw;->mBus:Lcom/squareup/otto/Bus;

    .line 158
    move-object/from16 v0, p15

    iput-object v0, p0, Lpw;->mUserProvider:Ljavax/inject/Provider;

    .line 159
    move-object/from16 v0, p16

    iput-object v0, p0, Lpw;->mUserPrefs:Lajx;

    .line 160
    const-class v2, Lbig;

    invoke-virtual {p0, v2, p0}, Lpw;->a(Ljava/lang/Class;Lts$b;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lpw$a;Ljava/lang/String;Layg;Ljavax/inject/Provider;)V
    .locals 17
    .param p3    # Lpw$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpw$a;",
            "Ljava/lang/String;",
            "Layg;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Laya;->a()Laya;

    move-result-object v5

    invoke-static {}, Lov;->a()Lov;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v7

    invoke-static {}, Llx;->a()Llx;

    move-result-object v8

    new-instance v9, Laug;

    invoke-direct {v9}, Laug;-><init>()V

    sget-object v10, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lbgn;->a()Lbgn;

    move-result-object v11

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v14

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v13, p5

    move-object/from16 v15, p6

    invoke-direct/range {v0 .. v16}, Lpw;-><init>(Ljava/lang/String;Ljava/lang/String;Lpw$a;Ljava/lang/String;Laya;Lov;Lcom/google/android/gms/gcm/GoogleCloudMessaging;Llx;Laug;Ljava/util/concurrent/ExecutorService;Lbgn;Landroid/os/Handler;Layg;Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lajx;)V

    .line 135
    return-void
.end method

.method static synthetic a(Lpw;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lpw;->mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 359
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 360
    iget-object v0, p0, Lpw;->mDeviceTokenManager:Laya;

    new-instance v1, Laxz;

    invoke-direct {v1, p1, p2}, Laxz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laya;->a(Laxz;)V

    .line 362
    :cond_0
    return-void
.end method

.method static synthetic b(Lpw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lpw;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lpw;)Llx;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lpw;->mGoogleAuthManager:Llx;

    return-object v0
.end method

.method static synthetic d(Lpw;)J
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lpw;->mRetryMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lpw;->mRetryMillis:J

    return-wide v0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lpw;->mRetryUtil:Laug;

    new-instance v2, Lpw$1;

    invoke-direct {v2, p0}, Lpw$1;-><init>(Lpw;)V

    invoke-virtual {v0, v2}, Laug;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-static {v1, v0}, Lalz;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    const-string v1, "LoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GcmRegistrationId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "LoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGcmRegistrationId IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const-string v0, "ie"

    goto :goto_0
.end method


# virtual methods
.method final a(Lbig;Luc;)V
    .locals 5
    .param p1    # Lbig;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 279
    if-nez p1, :cond_0

    .line 280
    new-array v0, v2, [Ljava/lang/Object;

    const v1, 0x7f0c01d0

    invoke-static {v3, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lpw;->mLoginCallback:Lpw$a;

    iget v2, p2, Luc;->mResponseCode:I

    invoke-interface {v1, v2, v0}, Lpw$a;->a(ILjava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Lbig;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lpw;->mLoginCallback:Lpw$a;

    invoke-virtual {p1}, Lbig;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p1}, Lbig;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpw$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1}, Lbig;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lbig;->d()Lbjp;

    move-result-object v0

    invoke-virtual {v0}, Lbjp;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {p1}, Lbig;->d()Lbjp;

    move-result-object v0

    invoke-static {v0}, Lajx;->a(Lbjp;)V

    iget-object v0, p0, Lpw;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lajv;->a(Lajv$b;)V

    :cond_2
    invoke-virtual {p1}, Lbig;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbig;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lpw;->mLoginCallback:Lpw$a;

    invoke-interface {v0}, Lpw$a;->a()V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Lbig;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lbig;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 292
    invoke-virtual {p1}, Lbig;->d()Lbjp;

    move-result-object v0

    invoke-virtual {v0}, Lbjp;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbig;->d()Lbjp;

    move-result-object v4

    invoke-static {v4}, Lajx;->a(Lbjp;)V

    invoke-static {v0}, Lajx;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lpw;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lajv;->a(Lajv$b;)V

    :cond_4
    invoke-virtual {p1}, Lbig;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbig;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lpw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbig;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lbig;->v()Lbkr;

    move-result-object v0

    invoke-virtual {v0}, Lbkr;->a()Lbkr$a;

    move-result-object v0

    sget-object v4, Lbkr$a;->NEEDS_PHONE_VERIFIED:Lbkr$a;

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Lajx;->a(Z)V

    invoke-virtual {p1}, Lbig;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lbig;->v()Lbkr;

    move-result-object v0

    invoke-virtual {v0}, Lbkr;->a()Lbkr$a;

    move-result-object v0

    sget-object v4, Lbkr$a;->NEEDS_CAPTCHA:Lbkr$a;

    if-ne v0, v4, :cond_6

    :goto_2
    invoke-static {v1}, Lajx;->b(Z)V

    invoke-virtual {p1}, Lbig;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lbig;->v()Lbkr;

    move-result-object v0

    invoke-virtual {v0}, Lbkr;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lajx;->c(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lpw;->mLoginCallback:Lpw$a;

    invoke-interface {v0}, Lpw$a;->x_()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 292
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_3

    .line 294
    :cond_8
    invoke-virtual {p1}, Lbig;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    invoke-virtual {p1}, Lbig;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->b(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lbig;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->v(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lpw;->mLoginCallback:Lpw$a;

    invoke-interface {v0, p1}, Lpw$a;->a(Lbig;)V

    goto/16 :goto_0

    .line 300
    :cond_9
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SUCCESSFUL_LOGIN_USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lpw;->mLoginName:Ljava/lang/String;

    invoke-static {v0, v4}, Lauc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SUCCESSFUL_LOGIN_USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lauc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lpw;->mLoginName:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lpw;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v0}, Layg;->d()V

    :cond_a
    invoke-static {v2}, Lajx;->c(Z)V

    iget-object v0, p0, Lpw;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, v1}, Lajv;->a(Lbgx;Z)Lajv$a;

    invoke-virtual {v0, v3}, Lajv;->a(Lajv$b;)V

    :cond_b
    invoke-virtual {p1}, Lbig;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbig;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lpw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->m()V

    iget-object v0, p0, Lpw;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeh;

    iget-object v3, p0, Lpw;->mUUID:Ljava/util/UUID;

    new-instance v4, Lajv$a;

    invoke-direct {v4, v1, v1, v1, v1}, Lajv$a;-><init>(ZZZZ)V

    invoke-direct {v2, v3, v1, v1, v4}, Lbeh;-><init>(Ljava/util/UUID;ZZLajv$a;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lpw;->mLoginCallback:Lpw$a;

    invoke-interface {v0, p1}, Lpw$a;->b(Lbig;)V

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lbig;

    new-instance v0, Lpw$4;

    invoke-direct {v0, p0, p1, p2}, Lpw$4;-><init>(Lpw;Lbig;Luc;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Luc;)V
    .locals 6
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 246
    .line 248
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 249
    iget v0, p0, Lpw;->mNumRetries:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lpw;->mNumRetries:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 250
    const/4 v0, 0x1

    .line 251
    const-string v2, "LoginTask"

    const-string v3, "Retry login after receiving SC_UNAUTHORIZED result."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lpw;->mHandler:Landroid/os/Handler;

    new-instance v2, Lpw$3;

    invoke-direct {v2, p0}, Lpw$3;-><init>(Lpw;)V

    iget-wide v4, p0, Lpw;->mRetryMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :goto_0
    if-nez v0, :cond_0

    .line 263
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 265
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v3, Lpw$b;

    invoke-direct {v3}, Lpw$b;-><init>()V

    .line 199
    sget-boolean v0, Lpw;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lpw$b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lpw$b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->m(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lpw;->mLoginName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lpw$b;->g(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lpw;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lpw$b;->b(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lpw;->mPreAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lpw$b;->a(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lpw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->i(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lpw;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lpw$2;

    invoke-direct {v4, p0, v3}, Lpw$2;-><init>(Lpw;Lpw$b;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 214
    iget-object v4, p0, Lpw;->mDeviceTokenManager:Laya;

    invoke-virtual {v4, v2}, Laya;->a(Z)Laxz;

    move-result-object v4

    .line 216
    if-eqz v4, :cond_3

    iget-object v5, v4, Laxz;->mId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Laxz;->mValue:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, v4, Laxz;->mId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lpw$b;->j(Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lpw;->mLoginName:Ljava/lang/String;

    iget-object v6, p0, Lpw;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Lpw$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lpw$b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Laya;->a(Laxz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpw$b;->k(Ljava/lang/String;)V

    .line 225
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lpw$b;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_1
    iget-object v0, p0, Lpw;->mScreenParameterProvider:Lov;

    iget-object v0, v0, Lov;->mResolution:Laue;

    invoke-virtual {v0}, Laue;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->a(Ljava/lang/Integer;)V

    .line 232
    iget-object v0, p0, Lpw;->mScreenParameterProvider:Lov;

    iget-object v0, v0, Lov;->mResolution:Laue;

    invoke-virtual {v0}, Laue;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->b(Ljava/lang/Integer;)V

    .line 233
    iget-object v0, p0, Lpw;->mScreenParameterProvider:Lov;

    iget v0, v0, Lov;->mMaxVideoHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->c(Ljava/lang/Integer;)V

    .line 234
    iget-object v0, p0, Lpw;->mScreenParameterProvider:Lov;

    iget v0, v0, Lov;->mMaxVideoWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->d(Ljava/lang/Integer;)V

    .line 237
    invoke-static {}, Lbgn;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lbgn;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lbgn;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lbgn;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    move v0, v1

    .line 240
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpw$b;->o(Ljava/lang/String;)V

    .line 241
    return-object v3

    .line 221
    :cond_3
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lpw$b;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :goto_4
    const-string v4, "LoginTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getAttestation exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const-string v0, "ie"

    invoke-virtual {v3, v0}, Lpw$b;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 237
    goto :goto_2

    .line 226
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "/loq/login"

    return-object v0
.end method
