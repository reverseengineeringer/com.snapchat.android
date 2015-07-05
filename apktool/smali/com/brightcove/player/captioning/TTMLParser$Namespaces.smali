.class public Lcom/brightcove/player/captioning/TTMLParser$Namespaces;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/TTMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Namespaces"
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String;

.field public static final TTM:Ljava/lang/String; = "http://www.w3.org/ns/ttml#metadata"

.field public static final TTS:Ljava/lang/String; = "http://www.w3.org/ns/ttml#styling"

.field public static final XML:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/brightcove/player/captioning/TTMLParser$Namespaces;->DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
