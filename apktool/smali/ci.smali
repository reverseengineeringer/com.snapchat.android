.class public final Lci;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;
    .annotation build Lce;
    .end annotation
.end field

.field public static final b:Ljava/nio/charset/Charset;
    .annotation build Lce;
    .end annotation
.end field

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Ljava/nio/charset/Charset;
    .annotation build Lce;
    .end annotation
.end field

.field public static final e:Ljava/nio/charset/Charset;
    .annotation build Lce;
    .end annotation
.end field

.field public static final f:Ljava/nio/charset/Charset;
    .annotation build Lce;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->a:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->b:Ljava/nio/charset/Charset;

    .line 68
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->c:Ljava/nio/charset/Charset;

    .line 78
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->d:Ljava/nio/charset/Charset;

    .line 88
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->e:Ljava/nio/charset/Charset;

    .line 99
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lci;->f:Ljava/nio/charset/Charset;

    return-void
.end method
