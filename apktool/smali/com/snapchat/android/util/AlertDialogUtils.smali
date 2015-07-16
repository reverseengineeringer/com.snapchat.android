.class public final Lcom/snapchat/android/util/AlertDialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/AlertDialogUtils$a;,
        Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertDialogUtils"

.field private static final TOAST_RATE_LIMIT:I = 0x7d0

.field private static sLastToast:Landroid/widget/Toast;
    .annotation build Lchd;
    .end annotation
.end field

.field private static sToastRateLimiter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sLastToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(I)I
    .locals 3

    .prologue
    .line 51
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid parameter for length"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return p0
.end method

.method static synthetic a(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/snapchat/android/util/AlertDialogUtils;->sLastToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$21;

    invoke-direct {v0}, Lcom/snapchat/android/util/AlertDialogUtils$21;-><init>()V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 150
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 279
    sget-boolean v0, Latt;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    const-string v1, "hasSeenNexus4RestartMessage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    const-string v1, "hasSeenNexus4RestartMessage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    const-string v1, "Nexus 4 Restarts"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    const v1, 0x7f060006

    invoke-static {p0, v1}, Lbgb;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    const-string v1, "Support"

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/AlertDialogUtils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    const v1, 0x7f0c0195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Laka;Lajk;)V
    .locals 5

    .prologue
    .line 241
    invoke-static {p0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v1

    .line 243
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const v0, 0x7f0c01f5

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 248
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    const v4, 0x7f0c01f4

    invoke-static {v0, v4, v3}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    const v0, 0x7f0c01f3

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$23;

    invoke-direct {v3, p1, v1, p2}, Lcom/snapchat/android/util/AlertDialogUtils$23;-><init>(Laka;Lakp;Lajk;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    const v0, 0x7f0c0058

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$2;

    invoke-direct {v3, p1, v1}, Lcom/snapchat/android/util/AlertDialogUtils$2;-><init>(Laka;Lakp;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 276
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lauf;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lauf;

    move-result-object v0

    iput-object p3, v0, Lauf;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0}, Lapw;->show()V

    invoke-virtual {v0}, Lapw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ZLqg$a;)V
    .locals 8
    .param p2    # Landroid/os/Message;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 418
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    .line 419
    if-nez v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_1
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v0, :cond_2

    .line 432
    const v7, 0x7f070001

    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/AlertDialogUtils$10;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lqg$a;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    :goto_1
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 465
    :cond_2
    const v7, 0x7f070004

    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/AlertDialogUtils$11;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lqg$a;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {v1, p1}, Lakp;->c(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 495
    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v0, :cond_4

    .line 496
    const v0, 0x7f070002

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$13;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/snapchat/android/util/AlertDialogUtils$13;-><init>(Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lqg$a;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 508
    :cond_4
    if-nez p4, :cond_5

    .line 510
    const v0, 0x7f070006

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$14;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 527
    :cond_5
    const v7, 0x7f070005

    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$15;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/AlertDialogUtils$15;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lqg$a;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 553
    :cond_6
    const v0, 0x7f070003

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$16;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/snapchat/android/util/AlertDialogUtils$16;-><init>(Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lqg$a;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 67
    const v1, 0x7f0c0195

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$1;

    invoke-direct {v2}, Lcom/snapchat/android/util/AlertDialogUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 86
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$12;

    invoke-direct {v1}, Lcom/snapchat/android/util/AlertDialogUtils$12;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 98
    const v1, 0x102000b

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V
    .locals 4

    .prologue
    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02e1

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$7;

    invoke-direct {v3, p3}, Lcom/snapchat/android/util/AlertDialogUtils$7;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0180

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$6;

    invoke-direct {v3, p3}, Lcom/snapchat/android/util/AlertDialogUtils$6;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 357
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$19;

    invoke-direct {v1}, Lcom/snapchat/android/util/AlertDialogUtils$19;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/util/AlertDialogUtils$a;)V
    .locals 5

    .prologue
    .line 364
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 367
    const v1, 0x7f0400d1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 368
    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 370
    :cond_0
    const v0, 0x7f0a0153

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 372
    const v1, 0x7f0c02e2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 373
    const v1, 0x7f0a0152

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 375
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c02e1

    new-instance v4, Lcom/snapchat/android/util/AlertDialogUtils$9;

    invoke-direct {v4, v0, p4}, Lcom/snapchat/android/util/AlertDialogUtils$9;-><init>(Landroid/widget/CheckBox;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0180

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$8;

    invoke-direct {v3, p4}, Lcom/snapchat/android/util/AlertDialogUtils$8;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 158
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 161
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$20;

    invoke-direct {v0, p2, p0, p1}, Lcom/snapchat/android/util/AlertDialogUtils$20;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sToastRateLimiter:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sToastRateLimiter:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sToastRateLimiter:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$22;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils$22;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils;->sToastRateLimiter:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sLastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 314
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    const-string v1, "firstTimeUsingBeta"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 318
    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/AlertDialogUtils$4;-><init>(Landroid/content/Context;)V

    .line 322
    const v2, 0x7f0c0266

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 323
    const v2, 0x7f0c0042

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 325
    const/4 v2, -0x1

    const v3, 0x7f0c0195

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/AlertDialogUtils$5;

    invoke-direct {v4, v0}, Lcom/snapchat/android/util/AlertDialogUtils$5;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 113
    const v1, 0x7f0c0195

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$17;

    invoke-direct {v2}, Lcom/snapchat/android/util/AlertDialogUtils$17;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->sToastRateLimiter:Ljava/util/Map;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$18;

    invoke-direct {v1}, Lcom/snapchat/android/util/AlertDialogUtils$18;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return-void
.end method
