.class public Lorg/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    if-nez p2, :cond_0

    .line 254
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    .line 256
    :cond_0
    if-nez p3, :cond_1

    .line 257
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 259
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 260
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 261
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 263
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 2

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    sput-object p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 140
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 305
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 333
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 361
    return-object p0
.end method

.method public append(F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 389
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 417
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 445
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 473
    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 574
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 619
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 665
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 711
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 757
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 803
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 849
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 864
    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 910
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 528
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 586
    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 606
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 632
    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 652
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 678
    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 698
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 724
    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 744
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 770
    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 790
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 816
    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 836
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 877
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 897
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 923
    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 943
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 541
    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 561
    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 501
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 277
    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 319
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 347
    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 375
    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 403
    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 431
    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 459
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 487
    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 515
    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 291
    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 957
    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 978
    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    .prologue
    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1012
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1058
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1061
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
