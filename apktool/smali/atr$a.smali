.class public final Latr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mLastUpdatedTimestamp:J

.field public mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Latr$a;->mNumber:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Latr$a;->mDisplayName:Ljava/lang/String;

    .line 133
    iput-wide p3, p0, Latr$a;->mLastUpdatedTimestamp:J

    .line 134
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 158
    instance-of v0, p1, Latr$a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Latr$a;->mNumber:Ljava/lang/String;

    check-cast p1, Latr$a;

    iget-object v1, p1, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
