.class public final Lalx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lakn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-direct {p0, v0}, Lalx;-><init>(Lakn;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lakn;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lalx;->a:Lakn;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lalx;->a:Lakn;

    const-string v1, "DOWNLOAD_MANAGER_ANDROID"

    const-string v2, "NUMBER_CONCURRENT_DOWNLOADS"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lalx;->a:Lakn;

    const-string v1, "DOWNLOAD_MANAGER_ANDROID"

    const-string v2, "MAX_CONCURRENT_DOWNLOADS_PER_CONTEXT"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
