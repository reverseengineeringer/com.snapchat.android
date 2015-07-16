.class public final Lqf;
.super Lul;
.source "SourceFile"


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lul;-><init>()V

    .line 16
    iput-object p1, p0, Lqf;->mUrl:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lqf;->mFile:Ljava/io/File;

    .line 18
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lqf;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lqf;->mUrl:Ljava/lang/String;

    return-object v0
.end method
