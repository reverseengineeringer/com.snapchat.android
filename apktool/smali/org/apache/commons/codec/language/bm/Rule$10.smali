.class final Lorg/apache/commons/codec/language/bm/Rule$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/language/bm/Rule$RPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field pattern:Ljava/util/regex/Pattern;

.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 488
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final isMatch(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
