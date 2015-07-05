.class public Lajc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lagk;


# static fields
.field protected static final LOCATION_CACHE_LIFETIME_MILLIS:J = 0xa4cb80L


# instance fields
.field private final mClock:Lbgk;

.field public mCustomDescription:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mCustomTitle:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mFriendName:Ljava/lang/String;

.field public mGeofence:Laiu;

.field public mIsLocalStory:Z

.field private mIsWhitelisted:Z

.field mStoryGroupDisplayName:Ljava/lang/String;

.field public mStoryId:Ljava/lang/String;

.field private mTimeLeft:J

.field mTimestamp:J

.field public mVenue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, v0}, Lajc;-><init>(Lbgk;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lbgk;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lajc;->mClock:Lbgk;

    .line 53
    return-void
.end method

.method public constructor <init>(Lbin;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lbin;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajc;->mStoryId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lbin;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajc;->mDisplayName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lbin;->c()Lbhz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Laiu;

    invoke-virtual {p1}, Lbin;->c()Lbhz;

    move-result-object v1

    invoke-direct {v0, v1}, Laiu;-><init>(Lbhz;)V

    iput-object v0, p0, Lajc;->mGeofence:Laiu;

    .line 69
    :cond_0
    invoke-virtual {p1}, Lbin;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajc;->mStoryGroupDisplayName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lbin;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajc;->mVenue:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lbin;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajc;->mFriendName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lbin;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajc;->mIsLocalStory:Z

    .line 73
    invoke-virtual {p1}, Lbin;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajc;->mIsWhitelisted:Z

    .line 74
    invoke-virtual {p1}, Lbin;->i()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lajc;->mTimeLeft:J

    .line 76
    :cond_1
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lajc;->mClock:Lbgk;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lajc;->mStoryId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lajc;->mDisplayName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lajc;->mGeofence:Laiu;

    .line 59
    iput-object v0, p0, Lajc;->mVenue:Ljava/lang/String;

    .line 60
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lajc;->mClock:Lbgk;

    .line 61
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    iget-boolean v2, p0, Lajc;->mIsWhitelisted:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lajc;->mTimeLeft:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lajc;->mTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lajc;->mTimeLeft:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lajc;->mTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lajc;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 162
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 164
    :cond_0
    instance-of v0, p1, Lajc;

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    check-cast p1, Lajc;

    .line 169
    iget-object v0, p0, Lajc;->mStoryId:Ljava/lang/String;

    iget-object v1, p1, Lajc;->mStoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lajc;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method
