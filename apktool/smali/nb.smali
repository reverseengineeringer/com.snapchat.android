.class public final Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AD_SPLASH_IMPRESSION_DURATION_KEY:Ljava/lang/String; = "ad_splash_impression_duration"

.field static final DEFAULT_AD_PAGE_IMPRESSION_DURATION_MILLISECONDS:J = 0x0L

.field static final DEFAULT_AD_SPLASH_IMPRESSION_DURATION_MILLISECONDS:J = 0x0L

.field static final DEFAULT_NETWORK_CODE:Ljava/lang/String; = "80247475"

.field static final IS_ACTIVE_KEY:Ljava/lang/String; = "is_active"

.field static final NETWORK_CODE_KEY:Ljava/lang/String; = "network_code"

.field static final STUDY_ID:Ljava/lang/String; = "AdManager"


# instance fields
.field public mStudySettings:Lakn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-direct {p0, v0}, Lnb;-><init>(Lakn;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lakn;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnb;->mStudySettings:Lakn;

    .line 29
    return-void
.end method
