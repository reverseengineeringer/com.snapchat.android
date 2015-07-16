.class public final Luy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mException:Ljava/io/IOException;

.field public mMigrationResult:Ljava/lang/String;

.field public mRequest:Lbnb;

.field public mResponse:Lbnd;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbnb;Ljava/lang/String;Lbnd;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Luy$a;->mRequest:Lbnb;

    .line 52
    iput-object p2, p0, Luy$a;->mUrl:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Luy$a;->mResponse:Lbnd;

    .line 54
    iput-object p4, p0, Luy$a;->mMigrationResult:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Luy$a;->mException:Ljava/io/IOException;

    .line 56
    return-void
.end method
