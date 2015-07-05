.class public final Laxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mCache:Lawp;

.field final mFile:Ljava/io/File;

.field final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lawp;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Laxb;->mKey:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Laxb;->mFile:Ljava/io/File;

    .line 22
    iput-object p1, p0, Laxb;->mCache:Lawp;

    .line 23
    return-void
.end method
