.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .locals 0

    .prologue
    .line 2939
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2940
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2941
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 2947
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 2953
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 2958
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2959
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2977
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2983
    return-void
.end method

.method public write([C)V
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2965
    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2971
    return-void
.end method
