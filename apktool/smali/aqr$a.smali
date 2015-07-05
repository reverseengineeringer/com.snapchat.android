.class public final Laqr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:J

.field public final b:Landroid/net/Uri;

.field public c:Ljava/io/File;
    .annotation build Lr;
    .end annotation
.end field

.field final synthetic d:Laqr;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laqr;JLjava/lang/String;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 152
    iput-object p1, p0, Laqr$a;->d:Laqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p2, p0, Laqr$a;->a:J

    .line 154
    invoke-static {p4}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Laqr$a;->e:Ljava/lang/String;

    .line 155
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Laqr$a;->b:Landroid/net/Uri;

    .line 156
    return-void
.end method
