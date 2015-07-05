.class final Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lafr$c;

.field b:Lafr$c;

.field c:F

.field d:F


# direct methods
.method constructor <init>(Lafr$c;Lafr$c;FF)V
    .locals 0
    .param p1    # Lafr$c;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lafr$c;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->a:Lafr$c;

    .line 149
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->b:Lafr$c;

    .line 150
    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->c:F

    .line 151
    iput p4, p0, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$b;->d:F

    .line 152
    return-void
.end method
