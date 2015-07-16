.class public final Lnq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    iput-object v0, p0, Lnq;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 24
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 6
    .param p0    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v0, Lge;

    invoke-direct {v0}, Lge;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v1, v1, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lge;->cashAmount:Ljava/lang/Double;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lge;->cashCurrency:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 35
    return-void
.end method
